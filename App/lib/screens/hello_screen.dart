import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:be_with_me/l10n/app_localizations.dart';
import 'package:be_with_me/models/user_role.dart';
import 'package:be_with_me/screens/QA/qa_screen.dart';
import 'package:be_with_me/screens/QA/qa_screen_non.dart';

/// Hello screen: blur.png background, scrollable Caveat text, green "Yes, I agree" button.
class HelloScreen extends StatelessWidget {
  const HelloScreen({super.key, this.content, this.userRoleIndex});

  /// Scrollable body text. If null, placeholder is used.
  final String? content;

  /// Optional role index from welcome flow (see [UserRole]).
  final int? userRoleIndex;

  static const _textColor = Color(0xFF1E1E1E);

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final String scrollText;
    if (content != null) {
      scrollText = content!;
    } else if (userRoleIndex != null &&
        userRoleIndex! >= 0 &&
        userRoleIndex! < UserRole.values.length) {
      final role = UserRole.values[userRoleIndex!];
      scrollText = role == UserRole.guardian
          ? l10n.guardianHelloSentence
          : l10n.nonGuardianHelloSentence;
    } else {
      scrollText =
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
          'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '
          'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris.';
    }

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Blur background: blur.png
          ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
            child: Image.asset('assets/images/blur.png', fit: BoxFit.cover),
          ),
          // Content
          SafeArea(
            child: Column(
              children: [
                SizedBox(height: 30),
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 24,
                    ),

                    child: Text(
                      scrollText,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'DancingScriptRegular',
                        color: _textColor,
                        fontSize: 20,
                        height: 1.5,
                        shadows: [
                          Shadow(
                            offset: Offset(0, 2),
                            blurRadius: 4,
                            color: Colors.black.withValues(alpha: 0.25),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 54),
                  child: SizedBox(
                    width: double.infinity,
                    height: 45,
                    child: Material(
                      elevation: 4, // shadow depth
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xFF2C2C2C),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: FilledButton(
                          onPressed: () {
                            final roleIndex = userRoleIndex ?? 0;
                            if(roleIndex == 0) {
                              Navigator.of(context).push(
                                MaterialPageRoute<void>(
                                  builder: (_) =>                                      
                                      QAScreen(userRoleIndex: roleIndex),
                                ),
                              );
                            } else {
                              Navigator.of(context).push(
                                MaterialPageRoute<void>(
                                  builder: (_) =>
                                      QAScreenNon(userRoleIndex: roleIndex),
                                ),
                              );
                            }
                          },
                          style: FilledButton.styleFrom(
                            backgroundColor: const Color(0xFF14AE5C),
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: Text(
                            l10n.yesIAgree,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
