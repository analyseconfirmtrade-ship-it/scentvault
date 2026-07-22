import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: const Color(0xFF171717),
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color(0xFFC8A977),
        brightness: Brightness.dark,
      ),
      useMaterial3: true,
    );
  }
}