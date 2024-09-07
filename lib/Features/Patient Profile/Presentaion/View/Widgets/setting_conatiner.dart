
import 'package:clinic_square/Core/Helpers/space.dart';
import 'package:clinic_square/Core/Themes/fonts.dart';
import 'package:clinic_square/Core/Widgets/Profile_widgets/photo_user_name.dart';
import 'package:clinic_square/Core/utils/assets.dart';
import 'package:clinic_square/Features/Patient%20Profile/Presentaion/View/Widgets/settings_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsContainer extends StatelessWidget {
  const SettingsContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
    height: 560.h,
    child: Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          height: 500.h,
          width: double.infinity,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Space.topSpace40,
              Text("Seif Tariq Maher", style: Fonts.font24_700darkBlue),
              Space.topSpace20,
              const SettingsList(),
            ],
          ),
        ),
        const PhotoAndUserName(
          photo: Assets.doctorImageIcon,
        )
      ],
    ),
          );
  }
}
