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
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve:  Curves.easeOutQuint,
      margin: selectedIndex==index?EdgeInsets.zero:const EdgeInsets.all(2),
      width: selectedIndex==index? 85.w :65.w,
      height: selectedIndex==index? 70.h:51.h,
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
    );
  }
}
