import 'package:flutter/material.dart';
import '../theme/app_fonts.dart';
import 'welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  static const _splashDuration = Duration(seconds: 10);

  @override
  void initState() {
    super.initState();
    Future.delayed(_splashDuration, _navigateToWelcome);
  }

  void _navigateToWelcome() {
    if (!mounted) return;
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => const WelcomeScreen()),
    );
  }

  Widget _buildTitleText() {
    return AppFonts.titleBeWithMe.buildText('Be With Me');
  }

  @override
  Widget build(BuildContext context) {
    



    return Scaffold(
      backgroundColor: const Color(0xFF4A90A4),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/app_icon.png', width: 270, height: 270),
            const SizedBox(height: 15),
            _buildTitleText(),
            const SizedBox(height: 8),
            Text(
              '(Elders)',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white.withValues(alpha: 0.85),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
