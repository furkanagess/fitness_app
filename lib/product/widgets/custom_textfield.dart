import 'package:flutter/material.dart';

final class CustomTextfield extends StatelessWidget {
  const CustomTextfield({
    this.hintText,
    this.defaultColor,
    this.hintColor,
    this.suffixIcon,
    this.iconTap,
    this.onSubmit,
    super.key,
    this.controller,
  });
  final TextEditingController? controller;
  final Color? defaultColor;
  final Color? hintColor;
  final Widget? suffixIcon;
  final VoidCallback? iconTap;
  final VoidCallback? onSubmit;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
        color: hintColor,
      ),
      cursorColor: hintColor,
      controller: controller,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        suffixIconColor: hintColor,
        filled: true,
        fillColor: defaultColor,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          color: hintColor,
        ),
      ),
    );
  }
}
