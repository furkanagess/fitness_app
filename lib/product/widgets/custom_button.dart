// ignore_for_file: must_be_immutable

import 'package:fitness_app/product/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    super.key,
    required this.title,
    required this.onPressed,
  });
  String title;
  VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.dynamicHeight(0.08),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: context.theme.colorScheme.primary,
          shape: const StadiumBorder(),
        ),
        onPressed: onPressed,
        child: Center(
          child: Text(
            title,
            style: context.textTheme.titleMedium?.copyWith(
              color: context.theme.colorScheme.secondary,
            ),
          ),
        ),
      ),
    );
  }
}
