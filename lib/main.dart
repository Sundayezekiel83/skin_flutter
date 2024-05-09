import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_skinguru/splash_screen.dart';

final colorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromRGBO(107, 52, 188, 1),
);

final theme = ThemeData().copyWith(
  // scaffoldBackgroundColor: colorScheme.background,
  colorScheme: colorScheme,
  textTheme: GoogleFonts.ralewayTextTheme().copyWith(
    titleSmall: GoogleFonts.raleway(fontWeight: FontWeight.w400, fontSize: 18),
    titleMedium: GoogleFonts.raleway(fontWeight: FontWeight.w500, fontSize: 14),
    titleLarge: GoogleFonts.raleway(fontWeight: FontWeight.w600, fontSize: 32),
  ),
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme,
      home: const SplashScreen(),
    );
  }
}
