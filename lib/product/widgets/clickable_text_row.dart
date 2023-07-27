import 'package:fitness_app/product/extensions/context_extension.dart';
import 'package:flutter/material.dart';

final class ClickableTextRow extends StatelessWidget {
  const ClickableTextRow({
    this.text,
    this.onTap,
    this.clickableText,
    this.textClr,
    super.key,
  });
  final String? text;
  final String? clickableText;
  final Color? textClr;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text!),
        SizedBox(width: context.dynamicHeight(0.01)),
        InkWell(
          onTap: onTap,
          child: Text(
            clickableText!,
            style: context.textTheme.bodyMedium?.copyWith(
              color: textClr,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
