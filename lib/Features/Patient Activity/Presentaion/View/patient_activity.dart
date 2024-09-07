import 'package:clinic_square/Core/Helpers/app_screen.dart';
import 'package:clinic_square/Core/Helpers/space.dart';
import 'package:clinic_square/Core/Widgets/header_text.dart';
import 'package:clinic_square/Core/utils/assets.dart';
import 'package:clinic_square/Features/Patient%20Activity/Presentaion/View/Widgets/activity_card.dart';
import 'package:flutter/material.dart';

class PatientActivity extends StatelessWidget {
  const PatientActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScreen(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Space.topSpace20,
          const HeaderText(title: 'My Activity', subTitle: ''),
          const ActivityCard(
            cardPhoto: Assets.consultationActivity,
            cardTitle: 'Consultation',
          ),
          Space.verticalSpace30,
          const ActivityCard(
            needPhotoPadding: true,
            cardPhoto: Assets.labActivity, cardTitle: 'Laboratory'),
          Space.verticalSpace30,
          
          const ActivityCard(
            // needPhotoPadding: true,
            cardPhoto: Assets.pharmacyActivity, cardTitle: "Pharmacy")
        ],
      ),
    );
  }
}

