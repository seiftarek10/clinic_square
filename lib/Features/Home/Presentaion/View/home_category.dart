import 'package:clinic_square/Core/Themes/colors.dart';
import 'package:clinic_square/Core/Themes/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeCategory extends StatelessWidget {
  const HomeCategory({super.key, required this.category,  this.imageFlex,  this.textFlex, required this.categoryIcon});

  final String category,categoryIcon;
  final int? imageFlex, textFlex;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 102.w,
      height: 120.h,
      decoration: BoxDecoration(
          color: AppColors.appBackgroundGrey,
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
         SizedBox(height: 5.h),
          Expanded(
            flex: imageFlex??2,
            child:Image.asset(
              categoryIcon,
              fit: BoxFit.cover
          )),
         SizedBox(height: 10.h),
          Expanded(
              flex: textFlex??1,
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
