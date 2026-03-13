import 'package:flutter/material.dart';

/// Full-screen vertical gradient background.
/// Top: #FFFFFF (0%), Bottom: #EFE1BB (100%).
class GradientBackground extends StatelessWidget {
  const GradientBackground({
    super.key,
    this.child,
  });

  final Widget? child;

  static const _gradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFFFFFFFF), // #FFFFFF at 0%
      Color(0xFFEFE1BB), // #EFE1BB at 100%
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: _gradient,
      ),
      child: child,
    );
  }
}
