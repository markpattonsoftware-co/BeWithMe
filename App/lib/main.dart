import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:be_with_me/l10n/app_localizations.dart';
import 'package:be_with_me/theme/app_fonts.dart';
import 'screens/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Load downloaded Dancing Script fonts at startup so they work on all devices.
  final bundle = rootBundle;
  final loadRegular = (FontLoader(AppFonts.myFontFamily)
    ..addFont(bundle.load('assets/fonts/DancingScript-Regular.ttf'))).load();
  final loadBold = (FontLoader(AppFonts.myFontFamilyBold)
    ..addFont(bundle.load('assets/fonts/DancingScript-Bold.ttf'))).load();
  await Future.wait([loadRegular, loadBold]);
  runApp(const BeWithMeApp());
}

class BeWithMeApp extends StatelessWidget {
  const BeWithMeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Be With Me - (Elders)',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      localeResolutionCallback: (locale, supportedLocales) {
        if (locale == null) return const Locale('en');
        for (final supported in supportedLocales) {
          if (supported.languageCode == locale.languageCode) return supported;
        }
        return const Locale('en');
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF4A90A4),
          brightness: Brightness.light,
          primary: const Color(0xFF2D6A7A),
        ),
        useMaterial3: true,
        
      ),
      home: const SplashScreen(),
    );
  }
}
