import 'package:fitness_app/product/extensions/context_extension.dart';
import 'package:flutter/material.dart';

final class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.title,
    this.onPressed,
  });
  final String? title;
  final VoidCallback? onPressed;

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
            title!,
            style: context.textTheme.titleMedium?.copyWith(
              color: context.theme.colorScheme.secondary,
            ),
          ),
        ),
      ),
    );
  }
}
