import 'package:flutter/material.dart';

class AppTheme {
  ThemeData get theme {
    return ThemeData(
      scaffoldBackgroundColor: _colorScheme.secondary,
      appBarTheme: _appBarTheme,
      colorScheme: _colorScheme,
      bottomNavigationBarTheme: _bottomNavigationBarTheme,
    );
  }

  BottomNavigationBarThemeData get _bottomNavigationBarTheme => BottomNavigationBarThemeData(
        backgroundColor: _colorScheme.onSecondary,
        selectedItemColor: _colorScheme.primary,
        unselectedIconTheme: IconThemeData(
          color: _colorScheme.surface,
        ),
        selectedIconTheme: IconThemeData(
          color: _colorScheme.primary,
          size: 30,
        ),
        elevation: 0,
        type: BottomNavigationBarType.fixed,
      );

  AppBarTheme get _appBarTheme => const AppBarTheme(
        centerTitle: true,
        elevation: 0,
      );
  ColorScheme get _colorScheme => const ColorScheme(
        brightness: Brightness.light,
        primary: Color(0xFFF12824), // used
        onPrimary: Color(0xFFFFFFFF), // used
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
