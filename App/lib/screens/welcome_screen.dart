import 'dart:io';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:be_with_me/l10n/app_localizations.dart';
import 'package:be_with_me/models/user_role.dart';
import 'package:be_with_me/screens/qr_scan_screen.dart';
import 'package:be_with_me/screens/hello_screen.dart';
import 'package:be_with_me/util/device_id.dart';
import 'package:be_with_me/widgets/suggest_dialog.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

import '../widgets/gradient_background.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final TextEditingController _deviceIdController = TextEditingController();
  UserRole _selectedRole = UserRole.guardian;
  File? _avatarFile;
  static const _avatarFileName = 'avatar.jpg';

  @override
  void initState() {
    super.initState();
    DeviceId.getId().then((id) {
      if (mounted) {
        _deviceIdController.text = id;
        setState(() {});
      }
    });
    _loadSavedAvatar();
  }

  Future<void> _loadSavedAvatar() async {
    try {
      final dir = await getApplicationDocumentsDirectory();
      final file = File('${dir.path}/$_avatarFileName');
      if (await file.exists() && mounted) {
        setState(() => _avatarFile = file);
      }
    } catch (_) {}
  }

  void _showImageSourceSheet() {
    showModalBottomSheet<void>(
      context: context,
      builder: (context) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.camera_alt),
              title: const Text('Camera'),
              onTap: () {
                Navigator.pop(context);
                _pickAndCropAvatar(ImageSource.camera);
              },
            ),
            ListTile(
              leading: const Icon(Icons.photo_library),
              title: const Text('Choose from gallery'),
              onTap: () {
                Navigator.pop(context);
                _pickAndCropAvatar(ImageSource.gallery);
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _showCameraPermissionDeniedDialog() async {
    final l10n = AppLocalizations.of(context)!;
    final openSettings = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l10n.cameraAccessTitle),
        content: Text(l10n.cameraAccessDeniedMessage),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text(l10n.dialogCancel),
          ),
          FilledButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: Text(l10n.openSettings),
          ),
        ],
      ),
    );
    if (openSettings == true) {
      await openAppSettings();
    }
  }

  Future<void> _pickAndCropAvatar(ImageSource source) async {
    if (source == ImageSource.camera) {
      final status = await Permission.camera.request();
      if (!status.isGranted) {
        if (!mounted) return;
        await _showCameraPermissionDeniedDialog();
        return;
      }
    }
    final picker = ImagePicker();
    XFile? picked;
    try {
      picked = await picker.pickImage(source: source, imageQuality: 90);
    } on PlatformException catch (e) {
      if (e.code == 'camera_access_denied' && mounted) {
        await _showCameraPermissionDeniedDialog();
      }
      return;
    }
    if (picked == null || !mounted) return;

    final cropped = await ImageCropper().cropImage(
      sourcePath: picked.path,
      aspectRatio: const CropAspectRatio(ratioX: 1, ratioY: 1),
      uiSettings: [
        AndroidUiSettings(
          toolbarTitle: 'Crop avatar',
          toolbarColor: const Color(0xFF442510),
          toolbarWidgetColor: Colors.white,
        ),
        IOSUiSettings(title: 'Crop avatar'),
      ],
    );
    if (cropped == null || !mounted) return;

    try {
      final dir = await getApplicationDocumentsDirectory();
      final destFile = File('${dir.path}/$_avatarFileName');
      await destFile.writeAsBytes(await File(cropped.path).readAsBytes());
      if (mounted) setState(() => _avatarFile = destFile);
    } catch (_) {
      if (mounted) setState(() => _avatarFile = File(cropped.path));
    }
  }

  @override
  void dispose() {
    _deviceIdController.dispose();
    super.dispose();
  }

  Future<void> _onContinuePressed() async {
    if (_avatarFile == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(AppLocalizations.of(context)!.pleaseSelectAvatar)),
      );
      return;
    }

    if (_selectedRole == UserRole.elderlyWithGuardian) {
      final ok = await SuggestDialog.show<bool>(
        context: context,
        title: '',
        message: AppLocalizations.of(context)!.suggestGuardianRegisterFirst,        
      );
      if (ok == true && mounted) {
        _navigateToQrScan();
      }
      return;
    }

    if (_selectedRole == UserRole.guardian || _selectedRole == UserRole.elderlyNoGuardian) {
      _navigateToHelloScreen(_selectedRole);
    }
  }

  void _navigateToQrScan() {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (_) => QrScanScreen(
          userRoleIndex: _selectedRole.index,
          
        ),
      ),
    );
  }

  void _navigateToHelloScreen(UserRole userRole) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (_) => HelloScreen(
          userRoleIndex: userRole.index,
        ),
      ),
    );
  }

  Widget _buildRadioOption(
    BuildContext context, {
    required UserRole value,
    required String label,
  }) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: () => setState(() => _selectedRole = value),
      borderRadius: BorderRadius.circular(8),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              //color: Colors.white,
              child: Radio<UserRole>(
              value: value,
              groupValue: _selectedRole,
              onChanged: (v) => setState(() => _selectedRole = v!),
              activeColor: Colors.black,
              fillColor: WidgetStateProperty.resolveWith((states) {
                if (states.contains(WidgetState.selected)) {
                  return Colors.black;
                }
                return const Color(0xFF757575);
              }),
            ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                  label,
                  style: theme.textTheme.bodyLarge?.copyWith(
                    color: Colors.black,
                    height: 1.4,
                    fontSize: 18,
                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDisclaimer(BuildContext context, ThemeData theme) {
    final l10n = AppLocalizations.of(context)!;
    const grey = Color(0xFF808080);
    const boldBlack = TextStyle(      
      color: Colors.black,
      fontSize: 18,
    );
    final baseStyle = theme.textTheme.bodyLarge?.copyWith(
      fontSize: 18,
      color: grey,
    ) ?? TextStyle(fontSize: 18, color: grey);

    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Text.rich(
          textAlign: TextAlign.center,
          TextSpan(
            style: baseStyle,
            children: [
              TextSpan(text: l10n.welcomeDisclaimerPrefix),
              TextSpan(
                text: l10n.welcomeTermsOfService,
                style: boldBlack,
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    // TODO: open Terms of Service
                  },
              ),
              TextSpan(text: l10n.welcomeDisclaimerAnd),
              TextSpan(
                text: l10n.welcomePrivacyPolicy,
                style: boldBlack,
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    // TODO: open Privacy Policy
                  },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;
    double screenWidth = MediaQuery.of(context).size.width;
    double avatarWidth = screenWidth * 166 / 414;

    return Scaffold(
      body: GradientBackground(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.sizeOf(context).height,
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 50),
                  GestureDetector(
                    onTap: _showImageSourceSheet,
                    child: ClipOval(
                      child: SizedBox(
                        width: avatarWidth,
                        height: avatarWidth,
                        child: _avatarFile != null
                            ? Image.file(
                                _avatarFile!,
                                fit: BoxFit.cover,
                              )
                            : Image.asset(
                                'assets/images/gen_avatar.png',
                                width: avatarWidth,
                                height: avatarWidth,
                                fit: BoxFit.cover,
                              ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 13),
              SizedBox(
                width: screenWidth - 80,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      l10n.welcomeDeviceIdLabel,
                      textAlign: TextAlign.start,
                      style: theme.textTheme.headlineMedium?.copyWith(
                        fontWeight: FontWeight.normal,
                        fontSize: 24,
                        color: Color(0xFF442510),
                      ),
                    ),
                    const SizedBox(height: 2),
                    SizedBox(
                      height: 37,
                      child: TextField(
                      style: theme.textTheme.bodyLarge?.copyWith(
                        color: Colors.grey,
                        fontSize: 19,
                      ),
                      
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: EdgeInsets.symmetric(horizontal: 16),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Color(0xFFE0E0E0), width: 1),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Color(0xFFE0E0E0), width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Color(0xFFE0E0E0), width: 1),
                        ),
                      ),
                      controller: _deviceIdController,
                      readOnly: true,
                    ),
                  
                    )
                    ],
                ),
              ),
              const SizedBox(height: 16),
              // Radio group: role selection
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildRadioOption(
                      context,
                      value: UserRole.guardian,
                      label: l10n.welcomeRoleGuardian,
                    ),
                    const SizedBox(height: 10),
                    _buildRadioOption(
                      context,
                      value: UserRole.elderlyWithGuardian,
                      label: l10n.welcomeRoleElderlyWithGuardian,
                    ),
                    const SizedBox(height: 10),
                    _buildRadioOption(
                      context,
                      value: UserRole.elderlyNoGuardian,
                      label: l10n.welcomeRoleElderlyNoGuardian,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 36),              
              ConstrainedBox(
                constraints: const BoxConstraints(
                  maxWidth: 324,
                ),
                child: SizedBox(
                  width: screenWidth - 80,
                  height: 50,
                  child: FilledButton(
                    onPressed: () {
                      // Placeholder for next flow
                      _onContinuePressed();
                    },
                    style: FilledButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      backgroundColor: Color(0xFF442510),
                    ),
                    child: Text(l10n.welcomeContinue, style: const TextStyle(fontSize: 20)),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              _buildDisclaimer(context, theme),
              const SizedBox(height: 24),
            ],
          ),
            ),
          ),
        ),
      ),
    );
  }
}
