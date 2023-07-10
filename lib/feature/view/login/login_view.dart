import 'package:fitness_app/product/constants/svg_constants.dart';
import 'package:fitness_app/product/extensions/context_extension.dart';
import 'package:fitness_app/product/widgets/custom_divider.dart';
import 'package:fitness_app/product/widgets/custom_text_row.dart';
import 'package:fitness_app/product/widgets/custom_textfield.dart';
import 'package:fitness_app/product/widgets/custom_button.dart';
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
            SizedBox(
              height: context.dynamicHeight(0.05),
            ),
            Expanded(
              flex: 3,
              child: Container(
                width: double.maxFinite,
                height: context.dynamicHeight(0.3),
                decoration: BoxDecoration(
                  color: context.theme.colorScheme.onPrimary,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: context.paddingLow,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text(
                            'FitDev App',
                            style: context.textTheme.titleLarge?.copyWith(
                              color: context.theme.colorScheme.surface,
                            ),
                          ),
                        ],
                      ),
                      SvgPicture.asset(
                        height: context.dynamicHeight(0.22),
                        SVGConstants.instance.workout,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: context.dynamicHeight(0.05),
            ),
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Log in',
                        style: context.textTheme.titleLarge?.copyWith(
                          color: context.theme.colorScheme.surface,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: context.paddingNormalVertical,
                    child: CustomTextfield(
                      hintText: 'Enter your email',
                      defaultColor: context.theme.colorScheme.secondary,
                      hintColor: context.theme.colorScheme.surface,
                    ),
                  ),
                  Padding(
                    padding: context.paddingNormalVertical,
                    child: CustomTextfield(
                      suffixIcon: const Icon(Icons.lock),
                      hintText: 'Enter your password',
                      defaultColor: context.theme.colorScheme.secondary,
                      hintColor: context.theme.colorScheme.surface,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  CustomButton(
                    title: 'Log in',
                    onPressed: () {},
                  ),
                  CustomDivider(
                    text: 'or',
                    dividerThickness: 0.5,
                    color: context.theme.colorScheme.surface,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          size: 30,
                          Icons.facebook,
                        ),
                      ),
                      SizedBox(
                        width: context.dynamicWidth(0.1),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          size: 30,
                          Icons.facebook,
                        ),
                      ),
                    ],
                  ),
                  ClickableTextRow(
                    text: 'Dont have an account?',
                    onTap: () {},
                    clickableText: 'Sign up',
                    textClr: context.theme.colorScheme.primary,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
