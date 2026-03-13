import 'package:flutter/material.dart';
import 'package:be_with_me/l10n/app_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../models/user_role.dart';
import '../../widgets/gradient_background.dart';
import 'qa_screen2.dart';

/// QA (Question & Answer) screen. Receives role index (see [UserRole]) and current QA step index.
class QAScreen extends StatefulWidget {
  const QAScreen({super.key, required this.userRoleIndex, this.qaIndex = 1});

  /// Index into [UserRole.values]; 0=guardian, 1=elderlyWithGuardian, 2=elderlyNoGuardian.
  final int userRoleIndex;

  /// Current QA step (1-based). Used for the question number and back button visibility.
  final int qaIndex;

  @override
  State<QAScreen> createState() => _QAScreenState();
}

class _QAScreenState extends State<QAScreen> {
  static const _keyGuardianQA1 = 'GuardianQA1';
  final TextEditingController _nameController = TextEditingController();

  UserRole get userRole =>
      UserRole.values[widget.userRoleIndex.clamp(0, UserRole.values.length - 1)];

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  Future<void> _onNextPressed() async {
    if (_nameController.text.trim().isEmpty) {
      return;
    }
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_keyGuardianQA1, _nameController.text.trim());
    if (!mounted) return;
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (_) => QAScreen2(userRoleIndex: widget.userRoleIndex),
      ),
    );
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
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        // Placeholder for QA content (questions/answers)
                        Padding(
                          padding: const EdgeInsets.all(0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Number badge
                              Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(                                  
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: const Text(
                                  '1.',
                                  style: TextStyle(   
                                    height: 1.2,                                 
                                    fontWeight: FontWeight.bold,
                                    fontSize: 23,
                                  ),
                                ),
                              ),                              
                              // Text block
                              const SizedBox(width: 5),
                              Expanded(
                                child: Text(
                                  l10n.guardianQA1,
                                  style: TextStyle(
                                    height: 1.2,
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold,
                                    shadows: [
                                      Shadow(
                                        offset: const Offset(0, 2),
                                        blurRadius: 4,
                                        color: Colors.black.withValues(alpha: 0.25),
                                      ),
                                      Shadow(
                                        offset: Offset(0, 1),
                                        blurRadius: 2,
                                        color: Colors.white.withValues(alpha: 0.15),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 40),
                        TextField(
                          controller: _nameController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: l10n.nameLabel,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(30),
                child: SizedBox(
                  width: double.infinity,
                  height: 40, // adjust to match the design
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
