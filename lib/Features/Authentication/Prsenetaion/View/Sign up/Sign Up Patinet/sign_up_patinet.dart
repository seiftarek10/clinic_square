import 'package:clinic_square/Core/Helpers/space.dart';
import 'package:clinic_square/Core/Widgets/app_main_button.dart';
import 'package:clinic_square/Core/Widgets/app_padding.dart';
import 'package:clinic_square/Features/Authentication/Prsenetaion/View/Sign%20up/polices_conditions_text.dart';
import 'package:clinic_square/Features/Authentication/Prsenetaion/View/Sign%20up/sign_up_header_text.dart';
import 'package:clinic_square/Features/Authentication/Prsenetaion/View/Sign%20up/signup_form.dart';
import 'package:flutter/material.dart';

class SignUpPatinet extends StatelessWidget {
  const SignUpPatinet({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: AppPadding(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Space.topSpace,
            const SignUpHeaderText(header: 'As Patient'),
            Space.verticalSpace12,
            const SignupForm(),
            Space.verticalSpace18,
            AppButton(onPressed: () {}),
            Space.verticalSpace12,
            const PolicesAndContions(),
            Space.bottomSpace
          ],
        ),
      ),
    )));
  }
}


