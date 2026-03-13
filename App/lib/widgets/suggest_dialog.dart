import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:be_with_me/l10n/app_localizations.dart';
import 'gradient_background.dart';

/// Suggest dialog: overlay, gradient content, illustration + speech bubble, OK button.
/// Use [SuggestDialog.show] to display.
class SuggestDialog extends StatelessWidget {
  const SuggestDialog({
    super.key,
    this.title,
    required this.message,
    this.actions = const [],
  });

  final String? title;
  final String message;
  final List<Widget> actions;

  static Future<T?> show<T>({
    required BuildContext context,
    String? title,
    required String message,
    List<Widget>? actions,
  }) {
    return showGeneralDialog<T>(
      context: context,
      barrierDismissible: true,
      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
      barrierColor: Colors.transparent,
      transitionDuration: const Duration(milliseconds: 200),
      pageBuilder: (context, _, __) => SuggestDialog(
        title: title,
        message: message,
      ),
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(opacity: animation, child: child);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Material(
      color: Colors.transparent,
      child: Stack(
        fit: StackFit.expand,
        children: [
          GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            behavior: HitTestBehavior.opaque,
            child: Container(color: Colors.black.withValues(alpha: 0.5)),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Material(
                color: Colors.transparent,
                child: Container(
                  constraints: const BoxConstraints(
                    maxWidth: 325,
                    maxHeight: 254,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.25),
                        blurRadius: 24,
                        offset: const Offset(0, 8),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: GradientBackground(
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Positioned(
                            top: 40,
                            left: 0,
                            child: Image.asset(
                              'assets/images/guadian_man_suggest.png',
                              fit: BoxFit.contain,
                              height: 180,
                            ),
                          ),
                          Positioned(
                            bottom: 130,
                            left: 100,
                            top: 10,
                            right: 5,
                            child: Material(
                              elevation: 4,
                              shadowColor: Colors.transparent,
                              color: Color(0x00E9E9EB),
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(4), bottomRight: Radius.circular(18), topLeft: Radius.circular(18), topRight: Radius.circular(18)),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                                child: Text(
                                  message,
                                  style: const TextStyle(fontSize: 16),
                                ),
                              ),
                            ),
                          ),

                          Positioned(
                            bottom: 15,
                            left: 40,
                            right: 40,
                            child: FilledButton(
                              onPressed: () => Navigator.of(context).pop(true),
                              style: FilledButton.styleFrom(
                                padding: const EdgeInsets.symmetric(horizontal: 16),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  side: const BorderSide(color: Color(0xFF2C2C2C), width: 1.0), // border color
                                ),
                                backgroundColor: Color(0xFF14AE5C),
                                
                              ),
                              
                              child: Text(l10n.dialogOk, style: const TextStyle(fontSize: 20)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
