import 'package:clinic_square/Core/Helpers/app_screen.dart';
import 'package:clinic_square/Core/Helpers/space.dart';
import 'package:clinic_square/Core/Widgets/date_widget.dart';
import 'package:clinic_square/Core/Widgets/divider.dart';
import 'package:clinic_square/Core/Widgets/header_bar.dart';
import 'package:clinic_square/Core/Widgets/location_widget.dart';
import 'package:clinic_square/Features/Patient%20Activity/Presentaion/View/Widgets/patient_tests.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ConsultationDetailsView extends StatelessWidget {
  const ConsultationDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScreen(
      child: Column(
        children: [
          Space.topSpace20,
          const HeaderBar(headerText: 'Doctor Seif'),
          Space.verticalSpace30,
          const LocationWidget(location: "Giza"),
          Space.verticalSpace12,
          const DateWidget(date: "5 October 2014"),
          AppDivider(height: 30.h),
          const PatientTests()
        ],
      ),
    );
  }
}
