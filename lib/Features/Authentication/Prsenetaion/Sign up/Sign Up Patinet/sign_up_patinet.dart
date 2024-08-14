import 'package:clinic_square/Core/Widgets/app_padding.dart';

import 'package:clinic_square/Features/Authentication/Prsenetaion/Sign%20up/sign_up_header_text.dart';
import 'package:clinic_square/Features/Authentication/Prsenetaion/Sign%20up/signup_form.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

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
            const SignUpHeaderText(header: 'As Patient'),
            SizedBox(height: 12.h),
            const SignupForm()
          ],
        ),
      ),
    )));
  }
}


