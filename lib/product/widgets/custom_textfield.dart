// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  CustomTextfield({
    required this.hintText,
    required this.defaultColor,
    required this.hintColor,
    this.suffixIcon,
    this.iconTap,
    this.onSubmit,
    super.key,
    this.controller,
  });
  TextEditingController? controller;
  Color defaultColor;
  Color hintColor;
  Widget? suffixIcon;
  VoidCallback? iconTap;
  VoidCallback? onSubmit;
  String hintText;

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
