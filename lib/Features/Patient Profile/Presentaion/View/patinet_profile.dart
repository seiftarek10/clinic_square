import 'package:clinic_square/Core/Helpers/app_screen.dart';
import 'package:clinic_square/Core/Helpers/space.dart';
import 'package:clinic_square/Core/Themes/fonts.dart';
import 'package:clinic_square/Core/Widgets/header_text.dart';
import 'package:clinic_square/Core/utils/assets.dart';
import 'package:clinic_square/Features/Patient%20Profile/Presentaion/View/Widgets/profile_patient_header_info_container.dart';
import 'package:clinic_square/Features/Patient%20Profile/Presentaion/View/Widgets/setting_container.dart';
import 'package:flutter/material.dart';

class PatinetProfileView extends StatelessWidget {
  const PatinetProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScreen(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Space.topSpace20,
        const HeaderText(title: "Profile", subTitle: ""),
        const PatientProfileHeaderInfoContainer(
          userName: 'Seif Tariq',
          image: Assets.doctorImageIcon,
        ),
        Space.verticalSpace24,
        const SettingContainer(),
        Space.verticalSpace145,
        Center(child: Text("Deveolped By @ Seif Tariq ", style: Fonts.font14_400DarkBlue))
      ],
    ));
  }
}
