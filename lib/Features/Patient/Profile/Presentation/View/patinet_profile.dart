import 'package:clinic_square/Core/Widgets/Profile_widgets/gradient_background.dart';
import 'package:clinic_square/Core/Widgets/Profile_widgets/profile_header_text.dart';
import 'package:clinic_square/Features/Patient/Profile/Presentation/View/Widgets/setting_conatiner.dart';

import 'package:flutter/material.dart';

class PatinetProfileView extends StatelessWidget {
  const PatinetProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(
      body: TweenAnimationBuilder(
        duration: const Duration(milliseconds: 300),
        tween: Tween<double>(begin: 0, end: 1),
        builder: (context, value, child) {
          return Opacity(
            opacity: value,
            child: const GradientBackground(
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
          );
        },
      ),
    ));
  }
}
