import 'package:flutter/material.dart';

class AppTheme {
  ThemeData get theme {
    return ThemeData(
      appBarTheme: _appBarTheme,
      colorScheme: _colorScheme,
    );
  }

  AppBarTheme get _appBarTheme => const AppBarTheme(
        centerTitle: true,
        elevation: 0,
      );
  ColorScheme get _colorScheme => const ColorScheme(
        brightness: Brightness.light,
        primary: Color(0xffE54231), // used
        onPrimary: Colors.white,
        secondary: Colors.white, // used
        onSecondary: Colors.white,
        error: Colors.red,
        onError: Colors.red,
        background: Colors.white,
        onBackground: Colors.white,
        surface: Colors.black, // used
        onSurface: Colors.white,
      );
}
