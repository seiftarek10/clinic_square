import 'package:clinic_square/Core/Routes/routes_path_key.dart';
import 'package:clinic_square/Core/Themes/fonts.dart';
import 'package:clinic_square/Core/Widgets/Buttons/card_button.dart';
import 'package:clinic_square/Core/utils/assets.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';


class DoctorCard extends StatelessWidget {
  const DoctorCard({super.key, required this.isClickable});
  final bool isClickable;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 126.h,
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
                      style: Fonts.font14_300DarkBlue
                          .copyWith(overflow: TextOverflow.ellipsis)),
                  // SizedBox(height: 6.h),
                  Row(
                    children: [
                      const Icon(EvaIcons.star, color: Colors.orange),
                      SizedBox(width: 4.w),
                      const Text('4.8 (4.279 reviews)'),


                  
                    ],
                  ),
                  isClickable == true
                      ? const CardButton(
                        buttonTitle: 'Book',
                        routePage:Routes.doctorDetails ,)
                      : const SizedBox.shrink()
                ],
              ))
        ],
      ),
    );
  }
}

