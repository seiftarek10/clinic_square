import 'package:clinic_square/Core/Helpers/space.dart';
import 'package:clinic_square/Core/Widgets/app_main_button.dart';
import 'package:clinic_square/Core/Widgets/app_padding.dart';
import 'package:clinic_square/Core/Widgets/attach_filed.dart';
import 'package:clinic_square/Features/Authentication/Prsenetaion/View/Sign%20up/polices_conditions_text.dart';
import 'package:clinic_square/Features/Authentication/Prsenetaion/View/Sign%20up/sign_up_header_text.dart';
import 'package:clinic_square/Features/Authentication/Prsenetaion/View/Sign%20up/signup_form.dart';
import 'package:flutter/material.dart';

class SignupLab extends StatelessWidget {
  const SignupLab({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: AppPadding(
              child: Column(
            children: [
              Space.topSpace,
              const SignUpHeaderText(header: 'As Laboratory'),
              Space.verticalSpace12,
              const SignupForm(isLab: true),
              Space.verticalSpace12,
              const AttachFiled(),
              Space.verticalSpace12,
              AppButton(onPressed: (){}),
              Space.verticalSpace12,
              const PolicesAndContions(),
              Space.bottomSpace
              
            ],
          )),
        ),
      ),
    );
  }
}
