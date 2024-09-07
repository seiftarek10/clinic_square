import 'package:clinic_square/Core/Themes/colors.dart';
import 'package:clinic_square/Core/Themes/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, required this.onPressed, required this.text});
  final void Function() onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.center,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            transform: const GradientRotation(5),
            colors: [AppColors.mainBlue, Colors.blue[100]!],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent, // Make button background transparent
            shadowColor: Colors.transparent, // Remove default shadow
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            padding: EdgeInsetsDirectional.symmetric(
              horizontal: 130.w,
              vertical: 15.h,
            ),
          ),
          child: Text(
            text,
            style: Fonts.font16_600White.copyWith(
              color: Colors.white, // Ensure text color is white
            ),
          ),
        ),
      ),
    );
  }
}
