import 'package:clinic_square/Core/Helpers/app_screen.dart';
import 'package:clinic_square/Core/Helpers/space.dart';
import 'package:clinic_square/Core/Routes/routes_path_key.dart';
import 'package:clinic_square/Core/Widgets/header_text.dart';
import 'package:clinic_square/Core/utils/assets.dart';
import 'package:clinic_square/Features/Patient%20Activity/Presentaion/View/Widgets/activity_category.dart';
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
          const ActivityContainerCategory(
            cardPhoto: Assets.consultationActivity,
            cardTitle: 'Consultation',
            routePage: Routes.consultationActivity,
          ),
          Space.verticalSpace30,
          const ActivityContainerCategory(
            needPhotoPadding: true,
            cardPhoto: Assets.labActivity,
            cardTitle: 'Laboratory',
            routePage: 'fff',
          ),
          Space.verticalSpace30,
          const ActivityContainerCategory(
            // needPhotoPadding: true,
            cardPhoto: Assets.pharmacyActivity, cardTitle: "Pharmacy",
            routePage: 'fff',
          )
        ],
      ),
    );
  }
}
