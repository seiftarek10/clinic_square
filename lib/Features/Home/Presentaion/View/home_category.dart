import 'package:clinic_square/Core/Themes/colors.dart';
import 'package:clinic_square/Core/Themes/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeCategory extends StatelessWidget {
  const HomeCategory({super.key, required this.category, required this.imageFlex, required this.textFlex});

  final String category;
  final int imageFlex, textFlex;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 102.w,
      height: 100.h,
      decoration: BoxDecoration(
          color: AppColors.appBackgroundGrey,
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          Expanded(flex: imageFlex, child: Icon(Icons.percent)),
          Expanded(
              flex: textFlex,
              child: Text(
                category,
                textAlign: TextAlign.center,
                style: Fonts.font14_700DarkBlue,
              ))
        ],
      ),
    );
  }
}
