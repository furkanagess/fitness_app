import 'package:fitness_app/product/extensions/context_extension.dart';
import 'package:flutter/material.dart';

final class CustomDivider extends StatelessWidget {
  const CustomDivider({
    this.text,
    this.dividerThickness,
    this.color,
    super.key,
  });
  final String? text;
  final Color? color;
  final double? dividerThickness;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: color,
            thickness: dividerThickness,
          ),
        ),
        Text(
          text!,
          style: context.textTheme.bodyMedium,
        ),
        Expanded(
          child: Divider(
            color: color,
            thickness: dividerThickness,
          ),
        ),
      ],
    );
  }
}
