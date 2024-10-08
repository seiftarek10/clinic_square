import 'package:clinic_square/Core/Helpers/app_screen.dart';
import 'package:clinic_square/Core/Helpers/space.dart';
import 'package:clinic_square/Core/Widgets/Buttons/app_main_button.dart';
import 'package:clinic_square/Core/Widgets/header_text.dart';
import 'package:clinic_square/Features/Authentication/Prsenetaion/View/Sign%20In/Widgets/forget_passwrod_text.dart';
import 'package:clinic_square/Features/Authentication/Prsenetaion/View/Sign%20In/Widgets/no_account_text.dart';
import 'package:clinic_square/Features/Authentication/Prsenetaion/View/Sign%20In/Widgets/sign_in_form.dart';
import 'package:clinic_square/Features/Authentication/Prsenetaion/View/Sign%20up/Widgets/polices_conditions_text.dart';
import 'package:clinic_square/Core/Widgets/divider.dart';
import 'package:flutter/material.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScreen(
                child: Column(
          children: [
            Space.topSpace40,
            const HeaderText(
                title: 'Welcome Back',
                subTitle:
                    "We're excited to have you back, can't wait to see what you've been up to since you last logged in."),
            Space.verticalSpace24,
            const SignInForm(),
            const ForgetPassworText(),
            AppButton(text: 'Sign in', onPressed: () {}),
            const AppDivider(),
            const PolicesAndContions(),
            Space.verticalSpace24,
            const NoAccountText()
          ],
        ));
    
  }
}
