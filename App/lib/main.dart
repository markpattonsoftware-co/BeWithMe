import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const BeWithMeApp());
}

class BeWithMeApp extends StatelessWidget {
  const BeWithMeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Be With Me - (Elders)',
      debugShowCheckedModeBanner: false,
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
