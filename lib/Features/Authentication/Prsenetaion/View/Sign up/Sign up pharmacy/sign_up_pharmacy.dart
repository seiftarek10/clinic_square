import 'package:clinic_square/Core/Helpers/space.dart';
import 'package:clinic_square/Core/Widgets/app_main_button.dart';
import 'package:clinic_square/Core/Widgets/app_padding.dart';
import 'package:clinic_square/Core/Widgets/attach_filed.dart';
import 'package:clinic_square/Features/Authentication/Prsenetaion/View/Sign%20up/already_have_account.dart';
import 'package:clinic_square/Features/Authentication/Prsenetaion/View/Sign%20up/polices_conditions_text.dart';
import 'package:clinic_square/Features/Authentication/Prsenetaion/View/Sign%20up/sign_up_header_text.dart';
import 'package:clinic_square/Features/Authentication/Prsenetaion/View/Sign%20up/signup_form.dart';
import 'package:flutter/material.dart';

class SignUpPharmacy extends StatelessWidget {
  const SignUpPharmacy({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: AppPadding(
            child: Column(
          children: [
            Space.topSpace,
            const SignUpHeaderText(header: 'As Pharmacy'),
            Space.verticalSpace12,
            const SignupForm(
              showAgeField: false,
              location: 'Location',
            ), Space.verticalSpace12,
              const AttachFiled(),
              Space.verticalSpace12,
              AppButton(onPressed: () {}),
              Space.verticalSpace18,
              const PolicesAndContions(),
              Space.verticalSpace18,
              const AlreadyHaveAccountText(),
              Space.verticalSpace12
          ],
        )),
      ),
    );
  }
}
