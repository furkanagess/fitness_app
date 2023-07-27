import 'package:flutter/material.dart';

final class AppRoutes {
  void pushNamedNavigateToPage(BuildContext context, String navigatePage) {
    Navigator.pushNamed(context, navigatePage);
  }

  void popBackToPage(BuildContext context) {
    Navigator.pop(context);
  }
}
