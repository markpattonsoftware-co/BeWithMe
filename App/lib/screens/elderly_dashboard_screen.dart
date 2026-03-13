import 'package:flutter/material.dart';
import 'package:be_with_me/widgets/gradient_background.dart';

/// Elderly's dashboard. Currently shows only the gradient background.
class ElderlyDashboardScreen extends StatelessWidget {
  const ElderlyDashboardScreen({super.key});

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
