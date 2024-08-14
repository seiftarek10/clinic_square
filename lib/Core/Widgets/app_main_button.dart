import 'package:clinic_square/Core/Themes/colors.dart';
import 'package:clinic_square/Core/Themes/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, required this.onPressed});
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed:onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        padding:
            EdgeInsetsDirectional.symmetric(horizontal: 130.w, vertical: 15.h),
        backgroundColor: AppColors.mainBlue,
      ),
      child: Text(
        "Sign Up",
        style: Fonts.font16_600White,
      ),
    );
  }
}
