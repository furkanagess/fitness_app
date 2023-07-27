import 'package:flutter/material.dart';

class AppTheme {
  ThemeData get theme {
    return ThemeData(
      scaffoldBackgroundColor: _colorScheme.secondary,
      appBarTheme: _appBarTheme,
      colorScheme: _colorScheme,
      bottomNavigationBarTheme: _bottomNavigationBarTheme,
      iconTheme: _iconThemeData,
      elevatedButtonTheme: _elevatedButtonTheme,
    );
  }

  ElevatedButtonThemeData get _elevatedButtonTheme => ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: _colorScheme.primary,
          shape: const StadiumBorder(),
        ),
      );

  IconThemeData get _iconThemeData => IconThemeData(
        size: 30,
        color: _colorScheme.primary,
      );

  BottomNavigationBarThemeData get _bottomNavigationBarTheme {
    return BottomNavigationBarThemeData(
      backgroundColor: _colorScheme.onSurface,
      selectedItemColor: _colorScheme.primary,
      unselectedIconTheme: IconThemeData(
        color: _colorScheme.surface,
      ),
      unselectedLabelStyle: const TextStyle(
        fontWeight: FontWeight.bold,
      ),
      selectedIconTheme: IconThemeData(
        color: _colorScheme.primary,
        size: 30,
      ),
      elevation: 0,
      type: BottomNavigationBarType.fixed,
    );
  }

  AppBarTheme get _appBarTheme => AppBarTheme(
        centerTitle: true,
        elevation: 0,
        backgroundColor: _colorScheme.onSecondary,
        titleTextStyle: TextStyle(
          color: _colorScheme.primary,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        iconTheme: IconThemeData(
          color: _colorScheme.primary,
        ),
      );

  ColorScheme get _colorScheme => const ColorScheme(
        brightness: Brightness.light,
        primary: Color(0xFFF12824), // used
        onPrimary: Color(0xFFFFFFFF), // used
        secondary: Colors.white, // used
        onSecondary: Colors.white, // used
        error: Colors.red,
        onError: Colors.red,
        background: Colors.white,
        onBackground: Colors.blue, // used
        surface: Colors.black, // used
        onSurface: Color(0xFFEEEBEB), // used
      );
}
