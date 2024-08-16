import 'package:clinic_square/Core/Helpers/space.dart';
import 'package:clinic_square/Core/Widgets/app_main_button.dart';
import 'package:clinic_square/Core/Widgets/app_padding.dart';
import 'package:clinic_square/Core/Widgets/scrollable_widget.dart';
import 'package:clinic_square/Features/Authentication/Prsenetaion/View/Sign%20In/forget_passwrod_text.dart';
import 'package:clinic_square/Features/Authentication/Prsenetaion/View/Sign%20In/sign_in_form.dart';
import 'package:clinic_square/Features/Authentication/Prsenetaion/View/Sign%20In/sign_in_header_text.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: AppScrollWidget(child: 
        AppPadding(child: 
        Column(
          children: [
            Space.topSpace,
            const SignInHeaderText(),
            Space.verticalSpace24,
            const SignInForm(),
            const ForgetPassworText(),
            AppButton(
              text: 'Sign in',
              onPressed: (){  })
          ],
        ))),
      ),
    );
  }
}
