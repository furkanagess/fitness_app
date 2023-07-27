import 'package:fitness_app/product/constants/app_strings.dart';
import 'package:fitness_app/product/constants/navigation_constants.dart';
import 'package:fitness_app/product/constants/svg_constants.dart';
import 'package:fitness_app/product/extensions/context_extension.dart';
import 'package:fitness_app/product/routes/app_routes.dart';
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
              child: headerImage(context),
            ),
            Expanded(
              flex: 2,
              child: textArea(context),
            ),
            Expanded(
              child: navigateLoginButton(context),
            ),
            SizedBox(
              height: context.dynamicHeight(0.05),
            ),
          ],
        ),
      ),
    );
  }

  SizedBox headerImage(BuildContext context) {
    return SizedBox(
      width: context.dynamicWidth(0.7),
      child: SvgPicture.asset(
        SVGConstants.instance.training,
      ),
    );
  }

  Column textArea(BuildContext context) {
    return Column(
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
    );
  }

  Padding navigateLoginButton(BuildContext context) {
    return Padding(
      padding: context.paddingLow,
      child: ElevatedButton(
        onPressed: () {
          AppRoutes().pushNamedNavigateToPage(
            context,
            NavigationConstants.login,
          );
        },
        child: Center(
          child: Text(
            AppStrings.start,
            style: context.textTheme.titleMedium?.copyWith(
              color: context.theme.colorScheme.secondary,
            ),
          ),
        ),
      ),
    );
  }
}
