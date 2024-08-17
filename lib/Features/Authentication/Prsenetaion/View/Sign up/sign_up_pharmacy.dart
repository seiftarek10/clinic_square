import 'package:clinic_square/Core/Helpers/space.dart';
import 'package:clinic_square/Core/Widgets/app_main_button.dart';
import 'package:clinic_square/Core/Widgets/app_padding.dart';
import 'package:clinic_square/Core/Widgets/attach_filed.dart';
import 'package:clinic_square/Core/Widgets/scrollable_widget.dart';
import 'package:clinic_square/Features/Authentication/Prsenetaion/View/Sign%20up/Widgets/already_have_account.dart';
import 'package:clinic_square/Features/Authentication/Prsenetaion/View/Sign%20up/Widgets/polices_conditions_text.dart';
import 'package:clinic_square/Features/Authentication/Prsenetaion/View/Sign%20up/Widgets/sign_up_header_text.dart';
import 'package:clinic_square/Features/Authentication/Prsenetaion/View/Sign%20up/Widgets/signup_form.dart';
import 'package:clinic_square/Core/Widgets/divider.dart';
import 'package:flutter/material.dart';

class SignUpPharmacy extends StatelessWidget {
  const SignUpPharmacy({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: AppScrollWidget(
          child: AppPadding(
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
                AppButton(
                  text: 'Sign Up',
                  onPressed: () {}),
                const AppDivider(),
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
