import 'package:clinic_square/Core/Widgets/app_padding.dart';
import 'package:clinic_square/Features/Authentication/Prsenetaion/Sign%20up/Sign_Up_As/all_roles._list.dart';
import 'package:clinic_square/Features/Authentication/Prsenetaion/Sign%20up/sign_up_header_text.dart';
import 'package:clinic_square/Features/Authentication/Prsenetaion/Sign%20up/already_have_account.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpAs extends StatelessWidget {
  const SignUpAs({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: AppPadding(
            child: Column(
              children: [
                const SignUpHeaderText(
                  header: 'Sing Up As',
                ),
                SizedBox(
                  height: 30.h,
                ),
                const AllRolesList(),
                SizedBox(
                  height: 12.h,
                ),
                const AlreadyHaveAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
