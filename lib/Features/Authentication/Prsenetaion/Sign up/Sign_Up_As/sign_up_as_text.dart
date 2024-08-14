import 'package:clinic_square/Core/Themes/colors.dart';
import 'package:clinic_square/Core/Themes/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpAsText extends StatelessWidget {
  const SignUpAsText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Sing Up As",
            style:
                Fonts.font40_700mainBlue.copyWith(color: AppColors.mainBlue)),
        SizedBox(height: 8.h),
        Text(
          'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
          style: Fonts.font14_300DarkBlue,
        ),
      ],
    );
  }
}
