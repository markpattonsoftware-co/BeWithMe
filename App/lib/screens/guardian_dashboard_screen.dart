import 'package:flutter/material.dart';
import 'package:be_with_me/widgets/gradient_background.dart';

/// Guardian's dashboard. Currently shows only the gradient background.
class GuardianDashboardScreen extends StatelessWidget {
  const GuardianDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        child: SafeArea(
          child: SizedBox.expand(),
        ),
      ),
    );
  }
}
