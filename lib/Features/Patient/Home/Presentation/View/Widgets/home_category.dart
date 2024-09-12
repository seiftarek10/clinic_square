import 'package:clinic_square/Core/Themes/colors.dart';
import 'package:clinic_square/Core/Themes/fonts.dart';
import 'package:clinic_square/Core/Widgets/app_gesture_detector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeCategory extends StatefulWidget {
  const HomeCategory({
    super.key,
    required this.category,
    this.imageFlex,
    this.textFlex,
    required this.categoryIcon,
    required this.routePage,
  });

  final String category, categoryIcon, routePage;
  final int? imageFlex, textFlex;

  @override
  State<HomeCategory> createState() => _HomeCategoryState();
}

class _HomeCategoryState extends State<HomeCategory> {
  Color _color = AppColors.appBackgroundGrey!;
  @override
  Widget build(BuildContext context) {
    return AppGestureDetector(
      route: widget.routePage,
      onTapDownColor: Colors.grey[400]!,
      onTapUpColor: AppColors.appBackgroundGrey!,
      onColorChanged: (color) {
        setState(() {
          _color = color;
        });
      },
      child: Container(
        width: 102.w,
        height: 120.h,
        decoration: BoxDecoration(
            color: _color, borderRadius: BorderRadius.circular(15)),
        child: Column(
          children: [
            SizedBox(height: 5.h),
            Expanded(
                flex: widget.imageFlex ?? 2,
                child: Image.asset(widget.categoryIcon, fit: BoxFit.cover)),
            SizedBox(height: 10.h),
            Expanded(
                flex: widget.textFlex ?? 1,
                child: Text(
                  widget.category,
                  textAlign: TextAlign.center,
                  style: Fonts.font14_700darkBlue,
                ))
          ],
        ),
      ),
    );
  }
}
