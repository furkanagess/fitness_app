import 'package:fitness_app/feature/view/onboard/onboard_view.dart';
import 'package:fitness_app/product/constants/app_strings.dart';
import 'package:fitness_app/product/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appName,
      theme: AppTheme().theme,
      home: const OnboardView(),
    );
  }
}
