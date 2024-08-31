import 'package:clinic_square/Core/Routes/routes_path_key.dart';
import 'package:clinic_square/Core/Themes/colors.dart';
import 'package:clinic_square/Core/Themes/fonts.dart';
import 'package:clinic_square/Core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class EPharmacyCard extends StatelessWidget {
  const EPharmacyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110.h,
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
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 6.h),
                  Text("Dr.Seif Tariq Maher",
                      style: Fonts.font16_600DarkBlue
                          .copyWith(overflow: TextOverflow.ellipsis)),
                  SizedBox(height: 6.h),
                  Text('General | RSUD Gatot Subroto',
                      maxLines: 2,
                      style: Fonts.font14_300DarkBlue
                          .copyWith(overflow: TextOverflow.ellipsis)),
                  Align(
                      alignment: Alignment.bottomRight,
                      child: ElevatedButton(
                          onPressed: () {
                          
                            GoRouter.of(context).push(Routes.eLabBookView);
                          },
                          style: ElevatedButton.styleFrom(
                              // padding: EdgeInsets.zero,
                              backgroundColor: AppColors.mainBlue),
                          child: Text("View", style: Fonts.font12_300White)))
                ],
              ))
        ],
      ),
    );
  }
}
