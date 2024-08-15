import 'package:clinic_square/Core/Themes/colors.dart';
import 'package:clinic_square/Core/Themes/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpHeaderText extends StatelessWidget {
  const SignUpHeaderText({super.key, required this.header});
  final String header;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(header,
            style:
                Fonts.font40_700mainBlue.copyWith(color: AppColors.mainBlue)),
        SizedBox(height: 4.h),
        Text(
          'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
          style: Fonts.font14_300DarkBlue,
        ),
      ],
    );
  }
}
