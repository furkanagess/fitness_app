import 'package:fitness_app/product/constants/app_strings.dart';
import 'package:fitness_app/product/constants/svg_constants.dart';
import 'package:fitness_app/product/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardView extends StatelessWidget {
  const OnboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: context.paddingNormalHorizontal,
        child: Column(
          children: [
            Expanded(
              flex: 6,
              child: SizedBox(
                width: context.dynamicWidth(0.7),
                child: SvgPicture.asset(
                  SVGConstants.instance.training,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Text(
                    AppStrings.fitDev,
                    style: context.textTheme.displaySmall?.copyWith(
                      color: context.theme.colorScheme.surface,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: context.dynamicHeight(0.02),
                  ),
                  Text(
                    AppStrings.ultimateFitness,
                    style: context.textTheme.titleMedium,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: context.paddingLow,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: context.theme.colorScheme.primary,
                    shape: const StadiumBorder(),
                  ),
                  onPressed: () {},
                  child: Center(
                    child: Text(
                      AppStrings.start,
                      style: context.textTheme.titleMedium?.copyWith(
                        color: context.theme.colorScheme.secondary,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: context.dynamicHeight(0.05),
            ),
          ],
        ),
      ),
    );
  }
}
