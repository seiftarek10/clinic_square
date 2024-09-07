import 'package:clinic_square/Core/Widgets/Profile_widgets/gradient_background.dart';
import 'package:clinic_square/Core/Widgets/Profile_widgets/profile_header_text.dart';
import 'package:clinic_square/Features/Patient%20Profile/Presentaion/View/Widgets/setting_conatiner.dart';

import 'package:flutter/material.dart';


class PatinetProfileView extends StatelessWidget {
  const PatinetProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: GradientBackground(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ProfileHeaderText(),
              SettingsContainer(),
            ],
          ),
        ),
      ),
    ));
  }
}
