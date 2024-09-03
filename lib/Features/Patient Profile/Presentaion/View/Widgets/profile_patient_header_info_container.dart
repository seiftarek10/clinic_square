import 'package:clinic_square/Core/Themes/colors.dart';
import 'package:clinic_square/Core/Themes/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PatientProfileHeaderInfoContainer extends StatelessWidget {
  const PatientProfileHeaderInfoContainer({
    super.key, required this.userName, required this.image,
  });

  final String userName,image;
  

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
           Expanded(
            flex: 2,
            child: CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage(image),
            ),
          ),
          SizedBox(width: 6.w),
          Expanded(
              flex: 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    userName,
                    style: Fonts.font16_600DarkBlue,
                  ),
                  Text(
                    "Patinet",
                    style: Fonts.font14_400DarkBlue,
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
