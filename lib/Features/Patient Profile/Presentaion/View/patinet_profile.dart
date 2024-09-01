import 'package:clinic_square/Core/Helpers/app_screen.dart';
import 'package:clinic_square/Core/Helpers/space.dart';
import 'package:clinic_square/Features/Patient%20Profile/Presentaion/View/Widgets/profile_patient_header_info_container.dart';
import 'package:flutter/material.dart';

class PatinetProfileView extends StatelessWidget {
  const PatinetProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScreen(
        child: Column(
      children: [
        Space.topSpace20,
        const PatientProfileHeaderInfoContainer()
      ],
    ));
  }
}

