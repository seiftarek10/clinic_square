import 'package:clinic_square/Core/Helpers/space.dart';
import 'package:clinic_square/Core/Widgets/app_main_button.dart';
import 'package:clinic_square/Core/Widgets/app_padding.dart';
import 'package:clinic_square/Core/Widgets/attach_filed.dart';
import 'package:clinic_square/Core/Widgets/header_text.dart';
import 'package:clinic_square/Core/Widgets/scrollable_widget.dart';
import 'package:clinic_square/Features/Authentication/Prsenetaion/View/Sign%20up/Widgets/already_have_account.dart';
import 'package:clinic_square/Features/Authentication/Prsenetaion/View/Sign%20up/Widgets/polices_conditions_text.dart';
import 'package:clinic_square/Features/Authentication/Prsenetaion/View/Sign%20up/Widgets/signup_form.dart';
import 'package:clinic_square/Core/Widgets/divider.dart';
import 'package:flutter/material.dart';

class SignUpDoctorView extends StatelessWidget {
  const SignUpDoctorView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: AppScrollWidget(
          child: AppPadding(
              child: Column(
            children: [
              Space.topSpace40,
              const HeaderText(
                title: 'As Doctor',
                subTitle:
                    'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
              ),
              Space.verticalSpace12,
              const SignupForm(
                showAgeField: true,
              ),
              Space.verticalSpace12,
              const AttachFiled(),
              Space.verticalSpace18,
              AppButton(text: 'Sign Up', onPressed: () {}),
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
