import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_skinguru/Onboarding/onboarding.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Theme.of(context).colorScheme.primary, // status bar color
    ));
    return AnimatedSplashScreen(
      duration: 1000,
      splash: Text(
        'Skin Guru',
        style: GoogleFonts.raleway(
            fontSize: 32, fontWeight: FontWeight.w600, color: Colors.white),
      ),
      nextScreen: const OnBoarding(),
      splashTransition: SplashTransition.fadeTransition,
      backgroundColor: Theme.of(context).colorScheme.primary,
    );
  }
}
