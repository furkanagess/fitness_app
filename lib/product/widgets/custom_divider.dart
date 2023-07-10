// ignore_for_file: must_be_immutable

import 'package:fitness_app/product/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  CustomDivider({
    required this.text,
    required this.dividerThickness,
    required this.color,
    super.key,
  });
  String text;
  Color color;
  double dividerThickness;

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
          text,
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
