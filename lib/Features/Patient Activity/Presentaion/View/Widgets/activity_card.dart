import 'package:clinic_square/Core/Themes/colors.dart';
import 'package:clinic_square/Core/Themes/fonts.dart';
import 'package:clinic_square/Core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ActivityCard extends StatelessWidget {
  const ActivityCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125.h,
      width: 343.w,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 4,
            child: SizedBox(
              height: double.infinity,
              child: AspectRatio(
                  aspectRatio: 1,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(Assets.doctorImageIcon,
                          fit: BoxFit.cover))),
            ),
          ),
          SizedBox(width: 16.w),
          Expanded(
              flex: 7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 4.h),
                  Text("Dr.Seif Tariq Maher",
                      style: Fonts.font16_600DarkBlue
                          .copyWith(overflow: TextOverflow.ellipsis)),
                  SizedBox(height: 6.h),
                  Text('General | RSUD Gatot Subroto',
                      maxLines: 2,
                      style: Fonts.font14_400DarkBlue
                          .copyWith(overflow: TextOverflow.ellipsis)),
                  SizedBox(height: 4.h),
                  Text('2024 5 October', style: Fonts.font14_500DarkBlue),
                  Align(
                    
                      alignment: Alignment.bottomRight,
                      child: TextButton(
                        
                          onPressed: () {},
                          child: Text("View",
                              style: Fonts.font14_400DarkBlue
                                  .copyWith(color: AppColors.mainBlue))))
                ],
              ))
        ],
      ),
    );
  }
}
