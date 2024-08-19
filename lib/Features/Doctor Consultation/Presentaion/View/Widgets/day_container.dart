import 'package:clinic_square/Core/Themes/colors.dart';
import 'package:clinic_square/Core/Themes/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DayContainer extends StatelessWidget {
  const DayContainer({
    super.key, required this.index, required this.selectedIndex,
  });

  final int index, selectedIndex;
  @override
  Widget build(BuildContext context) {
    return AnimatedScale(
      duration: const Duration(milliseconds: 200),
      scale: selectedIndex==index?1:0.8,
      child: Container(
        width: 85.w,
        decoration: BoxDecoration(
            color: selectedIndex==index? AppColors.mainBlue:AppColors.middleGrey,
            borderRadius: BorderRadius.circular(15)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Wed', style: Fonts.font16_600White),
            Text(
              '18',
              style: Fonts.font16_600White,
            )
          ],
        ),
      ),
    );
   
  }
}
