import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:be_with_me/l10n/app_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../models/user_role.dart';
import '../../widgets/gradient_background.dart';
import 'qa_done.dart';
import '../../widgets/suggest_dialog.dart';

/// QA step 9: notification timeout. Question uses QA2's saved elder name (e.g. "I will send you notification if your Daddy doesn't respond to me within").
class QAScreen9 extends StatefulWidget {
  const QAScreen9({super.key, required this.userRoleIndex});

  /// Index into [UserRole.values]; 0=guardian, 1=elderlyWithGuardian, 2=elderlyNoGuardian.
  final int userRoleIndex;

  UserRole get userRole =>
      UserRole.values[userRoleIndex.clamp(0, UserRole.values.length - 1)];

  @override
  State<QAScreen9> createState() => _QAScreen9State();
}

class _QAScreen9State extends State<QAScreen9> {
  static const _keyGuardianQA9 = 'GuardianQA9';
  static const _keyGuardianQA2Elder = 'GuardianQA2Elder';

  /// 0 = 1 hour, 1 = 2 hours, 2 = 3 hours, 3 = custom.
  int _selectedOption = 0;
  final TextEditingController _customHoursController = TextEditingController();

  @override
  void dispose() {
    _customHoursController.dispose();
    super.dispose();
  }

  int _getEffectiveHours() {
    if (_selectedOption == 0) return 1;
    if (_selectedOption == 1) return 2;
    if (_selectedOption == 2) return 3;
    final n = int.tryParse(_customHoursController.text.trim());
    return (n != null && n > 0) ? n : 1;
  }

  Future<void> _onNextPressed() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_keyGuardianQA9, _getEffectiveHours().toString());
    if (!mounted) return;

    final elder = await _loadElderRelation();
    if (!mounted) return;
    final l10n = AppLocalizations.of(context)!;

    final ok = await SuggestDialog.show<bool>(
      context: context,
      title: '',
      message: l10n.suggestQA9DoneMessage(elder),
    );

    if (ok == true && mounted) {
      Navigator.of(context).push(
        MaterialPageRoute<void>(
          builder: (_) => QADone(userRoleIndex: widget.userRoleIndex),
        ),
      );
    }    
  }

  Future<String> _loadElderRelation() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_keyGuardianQA2Elder) ?? 'elder';
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final screenWidth = MediaQuery.of(context).size.width;
    final iconSize = screenWidth / 2;

    return Scaffold(
      body: GradientBackground(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 50),
              Image.asset(
                'assets/images/QA.png',
                fit: BoxFit.contain,
                width: iconSize,
                height: iconSize,
              ),
              SizedBox(height: 40),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: FutureBuilder<String>(
                    future: _loadElderRelation(),
                    builder: (context, snapshot) {
                      final elder = snapshot.data ?? 'elder';
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  child: const Text(
                                    '9.',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 23,
                                      height: 1.2,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 5),
                                Expanded(
                                  child: Text(
                                    l10n.guardianQA9(elder),
                                    style: TextStyle(
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold,
                                      height: 1.2,
                                      shadows: [
                                        Shadow(
                                          offset: const Offset(0, 2),
                                          blurRadius: 4,
                                          color: Colors.black
                                              .withValues(alpha: 0.25),
                                        ),
                                        Shadow(
                                          offset: const Offset(0, 1),
                                          blurRadius: 2,
                                          color: Colors.white
                                              .withValues(alpha: 0.15),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 40),
                          Expanded(
                            child: SingleChildScrollView(
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    _buildRadioRow(
                                      context,
                                      value: 0,
                                      label: l10n.guardianQA9OneHour,
                                    ),
                                    _buildRadioRow(
                                      context,
                                      value: 1,
                                      label: l10n.guardianQA9TwoHours,
                                    ),
                                    _buildRadioRow(
                                      context,
                                      value: 2,
                                      label: l10n.guardianQA9ThreeHours,
                                    ),
                                    _buildCustomHoursRow(context, l10n),
                                  ],
                                ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: Row(
                    children: [
                      Expanded(
                        child: FilledButton(
                          onPressed: () => Navigator.of(context).pop(true),
                          style: FilledButton.styleFrom(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            backgroundColor: const Color(0xFFE8B931),
                            elevation: 4,
                          ),
                          child: Text(
                            l10n.dialogBack,
                            style: const TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                      const SizedBox(width: 24),
                      Expanded(
                        child: FilledButton(
                          onPressed: _onNextPressed,
                          style: FilledButton.styleFrom(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            backgroundColor: const Color(0xFF14AE5C),
                            elevation: 4,
                          ),
                          child: Text(
                            l10n.dialogNext,
                            style: const TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRadioRow(
    BuildContext context, {
    required int value,
    required String label,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Radio<int>(
            value: value,
            groupValue: _selectedOption,
            onChanged: (v) => setState(() => _selectedOption = value),
            activeColor: Colors.black,
          ),
          Text(label, style: const TextStyle(fontSize: 18)),
        ],
      ),
    );
  }

  Widget _buildCustomHoursRow(
    BuildContext context,
    AppLocalizations l10n,
  ) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Radio<int>(
            value: 3,
            groupValue: _selectedOption,
            onChanged: (v) => setState(() => _selectedOption = 3),
            activeColor: Theme.of(context).colorScheme.primary,
          ),
          SizedBox(
            width: 72,
            child: TextField(
              controller: _customHoursController,
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                LengthLimitingTextInputFormatter(3),
              ],
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                isDense: true,
              ),
              onTap: () => setState(() => _selectedOption = 3),
              onChanged: (_) => setState(() {}),
            ),
          ),
          const SizedBox(width: 8),
          Text(
            l10n.guardianQA9Hours,
            style: const TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
