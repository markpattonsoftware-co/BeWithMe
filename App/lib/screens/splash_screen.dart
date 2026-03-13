import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:be_with_me/l10n/app_localizations.dart';
import '../theme/app_fonts.dart';
import '../widgets/gradient_background.dart';
import 'welcome_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  static const _splashDuration = Duration(seconds: 5);

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    Future.delayed(_splashDuration, _navigateToWelcome);
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    super.dispose();
  }

  void _navigateToWelcome() {
    if (!mounted) return;
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => const WelcomeScreen()),
    );
  }

  Widget _buildTitleText(String text, {required double fontSize}) {
    final style = AppFonts.titleBeWithMe.copyWith(
      baseStyle: TextStyle(
        fontFamily: AppFonts.myFontFamilyBold,
        fontSize: fontSize,
        letterSpacing: 0.5,
      ),
    );
    return style.buildText(text, textAlign: TextAlign.center);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    double screenWidth = MediaQuery.of(context).size.width;
    double iconWidth = screenWidth * 267 / 440;
    return Scaffold(
      body: GradientBackground(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 130),
            Image.asset('assets/images/app_icon.png', width: iconWidth, height: iconWidth),
            const SizedBox(height: 15),
            _buildTitleText(
              '${l10n.splashTitle}\n${l10n.splashElders}',
              fontSize: 40.0,
            ),
            
          ],
        ),
        ),
      ),
    );
  }
}
