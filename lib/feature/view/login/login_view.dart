import 'package:fitness_app/product/constants/app_strings.dart';
import 'package:fitness_app/product/constants/navigation_constants.dart';
import 'package:fitness_app/product/constants/svg_constants.dart';
import 'package:fitness_app/product/extensions/context_extension.dart';
import 'package:fitness_app/product/routes/app_routes.dart';
import 'package:fitness_app/product/widgets/login_button.dart';
import 'package:fitness_app/product/widgets/custom_divider.dart';
import 'package:fitness_app/product/widgets/clickable_text_row.dart';
import 'package:fitness_app/product/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: context.paddingNormalHorizontal,
        child: Column(
          children: [
            SizedBox(height: context.dynamicHeight(0.05)),
            const Expanded(
              flex: 3,
              child: HeaderImage(),
            ),
            const Expanded(
              flex: 3,
              child: TextfieldArea(),
            ),
            const Expanded(
              child: ButtonArea(),
            ),
            const Expanded(
              child: SocialMediaAndSignUp(),
            )
          ],
        ),
      ),
    );
  }
}

class SocialMediaAndSignUp extends StatelessWidget {
  const SocialMediaAndSignUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.facebook,
                color: context.theme.colorScheme.onBackground,
              ),
            ),
            SizedBox(
              width: context.dynamicWidth(0.1),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.facebook,
                color: context.theme.colorScheme.onBackground,
              ),
            ),
          ],
        ),
        ClickableTextRow(
          text: AppStrings.dontHaveAccount,
          onTap: () {},
          clickableText: AppStrings.signUp,
          textClr: context.theme.colorScheme.primary,
        ),
      ],
    );
  }
}

class ButtonArea extends StatelessWidget {
  const ButtonArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LoginButton(
          title: AppStrings.login,
          onPressed: () {
            AppRoutes().pushNamedNavigateToPage(
              context,
              NavigationConstants.main,
            );
          },
        ),
        CustomDivider(
          text: AppStrings.or,
          thickness: 0.5,
          color: context.theme.colorScheme.surface,
        ),
      ],
    );
  }
}

class TextfieldArea extends StatelessWidget {
  const TextfieldArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: context.dynamicHeight(0.05),
        ),
        Row(
          children: [
            Text(
              AppStrings.login,
              style: context.textTheme.titleLarge?.copyWith(
                color: context.theme.colorScheme.surface,
              ),
            ),
          ],
        ),
        Padding(
          padding: context.paddingNormalVertical,
          child: CustomTextfield(
            hintText: AppStrings.enterMail,
            defaultColor: context.theme.colorScheme.secondary,
            hintColor: context.theme.colorScheme.surface,
          ),
        ),
        Padding(
          padding: context.paddingNormalVertical,
          child: CustomTextfield(
            suffixIcon: const Icon(Icons.lock),
            hintText: AppStrings.enterPassword,
            defaultColor: context.theme.colorScheme.secondary,
            hintColor: context.theme.colorScheme.surface,
          ),
        ),
      ],
    );
  }
}

class HeaderImage extends StatelessWidget {
  const HeaderImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: context.theme.colorScheme.onPrimary,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: context.paddingLow,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              height: context.dynamicHeight(0.3),
              SVGConstants.instance.workout,
            ),
          ],
        ),
      ),
    );
  }
}
