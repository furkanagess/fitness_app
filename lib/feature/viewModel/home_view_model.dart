import 'package:fitness_app/product/constants/app_strings.dart';
import 'package:flutter/widgets.dart';

final class HomeViewModel extends ChangeNotifier {
  final current = 0;
  final tabs = <String>[
    AppStrings.all,
    AppStrings.strength,
    AppStrings.cardio,
    AppStrings.flexibility,
  ];
}
