import 'package:clinic_square/Core/Helpers/space.dart';
import 'package:clinic_square/Core/Widgets/app_main_button.dart';
import 'package:clinic_square/Core/Widgets/app_padding.dart';
import 'package:clinic_square/Core/Widgets/attach_filed.dart';
import 'package:clinic_square/Features/Authentication/Prsenetaion/View/Sign%20up/already_have_account.dart';
import 'package:clinic_square/Features/Authentication/Prsenetaion/View/Sign%20up/polices_conditions_text.dart';
import 'package:clinic_square/Features/Authentication/Prsenetaion/View/Sign%20up/sign_up_header_text.dart';
import 'package:clinic_square/Features/Authentication/Prsenetaion/View/Sign%20up/signup_form.dart';
import 'package:flutter/material.dart';

class SignUpDoctor extends StatelessWidget {
  const SignUpDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: AppPadding(
              child: Column(
            children: [
              Space.topSpace,
              const SignUpHeaderText(header: 'As Doctor'),
              Space.verticalSpace12,
              const SignupForm(
                showAgeField: true,
              ),
              Space.verticalSpace12,
              const AttachFiled(),
              Space.verticalSpace18,
              AppButton(onPressed: () {}),
             Space.verticalSpace18,
              const PolicesAndContions(),
              Space.verticalSpace18,
              const AlreadyHaveAccountText(),
              Space.verticalSpace12
            ],
          )),
        ),
      ),
    );
  }
}
