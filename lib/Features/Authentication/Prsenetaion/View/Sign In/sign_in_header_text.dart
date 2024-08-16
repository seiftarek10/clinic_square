import 'package:clinic_square/Core/Themes/colors.dart';
import 'package:clinic_square/Core/Themes/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInHeaderText extends StatelessWidget {
  const SignInHeaderText({super.key});
  

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Welcome Back",
            style:
                Fonts.font40_700mainBlue.copyWith(color: AppColors.mainBlue)),
        SizedBox(height: 4.h),
        Text(
        "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
          style: Fonts.font14_300DarkBlue,
        ),
      ],
    );
  }
}