import 'package:flutter/material.dart';
import 'package:be_with_me/l10n/app_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../models/user_role.dart';
import '../../widgets/gradient_background.dart';
import '../guardian_dashboard_screen.dart';

/// QA done screen: thank-you message with elder name, in a styled message box.
class QADone extends StatefulWidget {
  const QADone({super.key, required this.userRoleIndex});

  /// Index into [UserRole.values]; 0=guardian, 1=elderlyWithGuardian, 2=elderlyNoGuardian.
  final int userRoleIndex;

  UserRole get userRole =>
      UserRole.values[userRoleIndex.clamp(0, UserRole.values.length - 1)];

  @override
  State<QADone> createState() => _QADoneState();
}

class _QADoneState extends State<QADone> {
  static const _keyGuardianQA2Elder = 'GuardianQA2Elder';

  Future<String> _loadElderRelation() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_keyGuardianQA2Elder) ?? 'elder';
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    double screenWidth = MediaQuery.of(context).size.width;
    double iconSize = screenWidth / 2;
    return Scaffold(
      body: GradientBackground(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 50),
              Image.asset(
                'assets/images/qa_done.png',
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
                      final message = l10n.qaDoneMessage(elder);
                      return SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: Container(
                            width: double.infinity,
                            padding: const EdgeInsets.fromLTRB(24, 28, 24, 28),
                            decoration: BoxDecoration(
                              color: const Color(0xFFF5F5F5),
                              borderRadius: BorderRadius.circular(16),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withValues(alpha: 0.25),
                                  blurRadius: 12,
                                  offset: const Offset(0, 4),
                                ),
                              ],
                            ),
                            child: Text(
                              message,
                              textAlign: TextAlign.left,
                              style: const TextStyle(
                                fontSize: 16,
                                height: 1.5,
                                color: Color(0xFF2C2C2C),
                              ),
                            ),
                          ),
                        ),
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
                          onPressed: () {
                            Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute<void>(
                                builder: (_) => const GuardianDashboardScreen(),
                              ),
                              (route) => false,
                            );
                          },
                          style: FilledButton.styleFrom(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            backgroundColor: const Color(0xFF14AE5C),
                            elevation: 4,
                          ),
                          child: Text(
                            l10n.guardianQA5Done,
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
}
