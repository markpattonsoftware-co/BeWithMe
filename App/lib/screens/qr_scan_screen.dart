import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:permission_handler/permission_handler.dart';

import 'package:be_with_me/l10n/app_localizations.dart';
import '../models/user_role.dart';
import '../widgets/gradient_background.dart';

/// QR Scan screen with live camera. Receives role index (see [UserRole]) from welcome flow.
/// Pops with the scanned string ([String]) when a QR code is detected, or null when back is pressed.
class QrScanScreen extends StatefulWidget {
  const QrScanScreen({
    super.key,
    required this.userRoleIndex,
  });

  /// Index into [UserRole.values]; 0=guardian, 1=elderlyWithGuardian, 2=elderlyNoGuardian.
  final int userRoleIndex;

  UserRole get userRole =>
      UserRole.values[userRoleIndex.clamp(0, UserRole.values.length - 1)];

  @override
  State<QrScanScreen> createState() => _QrScanScreenState();
}

class _QrScanScreenState extends State<QrScanScreen> {
  final MobileScannerController _controller = MobileScannerController(
    detectionSpeed: DetectionSpeed.normal,
    facing: CameraFacing.back,
    torchEnabled: false,
  );

  bool _hasResult = false;
  bool _permissionChecked = false;
  bool _permissionGranted = false;

  @override
  void initState() {
    super.initState();
    _requestCameraPermission();
  }

  Future<void> _requestCameraPermission() async {
    final status = await Permission.camera.request();
    if (!mounted) return;
    setState(() {
      _permissionChecked = true;
      _permissionGranted = status.isGranted;
    });
  }

  Future<void> _openSettings() async {
    await openAppSettings();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onDetect(BarcodeCapture capture) {
    if (_hasResult) return;
    final List<Barcode> barcodes = capture.barcodes;
    if (barcodes.isEmpty) return;
    final String? value = barcodes.first.rawValue;
    if (value == null || value.isEmpty) return;
    _hasResult = true;
    _controller.stop();
    if (mounted) {
      Navigator.of(context).pop(value);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 24, 24, 16),
                child: Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back_ios_new),
                      color: const Color(0xFF442510),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        'QR Scan',
                        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                              color: const Color(0xFF442510),
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  'Role: ${widget.userRole.name}',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: const Color(0xFF442510),
                      ),
                ),
              ),
              const SizedBox(height: 24),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        if (!_permissionChecked || !_permissionGranted)
                          Container(
                            color: Colors.black87,
                            alignment: Alignment.center,
                            child: Padding(
                              padding: const EdgeInsets.all(24),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.camera_alt_outlined,
                                    size: 64,
                                    color: Colors.white70,
                                  ),
                                  const SizedBox(height: 16),
                                  Text(
                                    _permissionChecked && !_permissionGranted
                                        ? AppLocalizations.of(context)!.cameraAccessDeniedMessageQR
                                        : 'Requesting camera access...',
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      color: Colors.white70,
                                      fontSize: 14,
                                    ),
                                  ),
                                  if (_permissionChecked && !_permissionGranted) ...[
                                    const SizedBox(height: 16),
                                    FilledButton.icon(
                                      onPressed: _openSettings,
                                      icon: const Icon(Icons.settings, size: 20),
                                      label: Text(AppLocalizations.of(context)!.openSettings),
                                    ),
                                    const SizedBox(height: 8),
                                    TextButton(
                                      onPressed: () => Navigator.of(context).pop(),
                                      child: Text(AppLocalizations.of(context)!.dialogBack),
                                    ),
                                  ],
                                ],
                              ),
                            ),
                          )
                        else
                          MobileScanner(
                            controller: _controller,
                            onDetect: _onDetect,
                            errorBuilder: (context, error) {
                              final message = error.errorDetails?.message ?? error.toString();
                              return Container(
                                color: Colors.black87,
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: const EdgeInsets.all(24),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(
                                        Icons.camera_alt_outlined,
                                        size: 64,
                                        color: Colors.white70,
                                      ),
                                      const SizedBox(height: 16),
                                      Text(
                                        message,
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                          color: Colors.white70,
                                          fontSize: 14,
                                        ),
                                      ),
                                      if (error.errorCode ==
                                          MobileScannerErrorCode.permissionDenied) ...[
                                        const SizedBox(height: 12),
                                        FilledButton.icon(
                                          onPressed: _openSettings,
                                          icon: const Icon(Icons.settings, size: 20),
                                          label: Text(AppLocalizations.of(context)!.openSettings),
                                        ),
                                      ],
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        if (_permissionGranted)
                          Center(
                            child: Container(
                              width: 260,
                              height: 260,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white.withValues(alpha: 0.8),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Stack(
                                alignment: Alignment.topLeft,
                                children: [
                                  _corner(0, 0),
                                  Positioned(right: 0, top: 0, child: _corner(1, 0)),
                                  Positioned(bottom: 0, left: 0, child: _corner(0, 1)),
                                  Positioned(
                                      right: 0, bottom: 0, child: _corner(1, 1)),
                                ],
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 16, 24, 32),
                child: Text(
                  'Position the QR code within the frame',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: const Color(0xFF442510).withValues(alpha: 0.9),
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _corner(int dx, int dy) {
    const double size = 28;
    const double stroke = 3;
    return SizedBox(
      width: size,
      height: size,
      child: CustomPaint(
        painter: _CornerPainter(
          strokeWidth: stroke,
          corner: (dx, dy),
        ),
      ),
    );
  }
}

class _CornerPainter extends CustomPainter {
  _CornerPainter({required this.strokeWidth, required this.corner});

  final double strokeWidth;
  final (int, int) corner;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xFF4CAF50)
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;
    const length = 20.0;
    final (dx, dy) = corner;
    if (dx == 0 && dy == 0) {
      canvas.drawLine(Offset(0, 0), Offset(0, length), paint);
      canvas.drawLine(Offset(0, 0), Offset(length, 0), paint);
    } else if (dx == 1 && dy == 0) {
      canvas.drawLine(Offset(size.width - length, 0), Offset(size.width, 0), paint);
      canvas.drawLine(Offset(size.width, 0), Offset(size.width, length), paint);
    } else if (dx == 0 && dy == 1) {
      canvas.drawLine(Offset(0, size.height - length), Offset(0, size.height), paint);
      canvas.drawLine(Offset(0, size.height), Offset(length, size.height), paint);
    } else {
      canvas.drawLine(
          Offset(size.width - length, size.height), Offset(size.width, size.height), paint);
      canvas.drawLine(
          Offset(size.width, size.height - length), Offset(size.width, size.height), paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
