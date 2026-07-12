import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const FlashDashApp());
}

class FlashDashApp extends StatelessWidget {
  const FlashDashApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flash Dash',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.orange,
        textTheme: GoogleFonts.fredokaTextTheme(),
      ),
      home: const HomeScreen(),
    );
  }
}