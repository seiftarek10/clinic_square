import 'package:clinic_square/Core/Themes/colors.dart';
import 'package:clinic_square/Core/Themes/fonts.dart';
import 'package:clinic_square/Core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PatientProfileHeaderInfoContainer extends StatelessWidget {
  const PatientProfileHeaderInfoContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      width: double.infinity,
      decoration: BoxDecoration(
          color: AppColors.appBackgroundGrey,
          borderRadius: BorderRadius.circular(14)),
      child: Row(
        children: [
          const Expanded(
            child: CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage(Assets.doctorImageIcon),
            ),
          ),
          SizedBox(width: 6.w),
          Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Seif Tariq Maher",
                    style: Fonts.font16_600DarkBlue,
                  ),
                  Text(
                    "01027870171",
                    style: Fonts.font14_300DarkBlue,
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
