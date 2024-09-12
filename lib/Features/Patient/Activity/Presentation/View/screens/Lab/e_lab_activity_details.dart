import 'package:clinic_square/Core/Helpers/app_screen.dart';
import 'package:clinic_square/Core/Helpers/space.dart';
import 'package:clinic_square/Core/Widgets/date_widget.dart';
import 'package:clinic_square/Core/Widgets/divider.dart';
import 'package:clinic_square/Core/Widgets/header_bar.dart';
import 'package:clinic_square/Core/Widgets/location_widget.dart';
import 'package:clinic_square/Features/Patient/Activity/Presentation/View/Widgets/patient_tests.dart';
import 'package:flutter/material.dart';

class ELabActivityDetailsView extends StatelessWidget {
  const ELabActivityDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScreen(
        child: Column(
      children: [
        Space.topSpace20,
        const HeaderBar(headerText: 'Lab Name'),
        Space.verticalSpace24,
        const LocationWidget(location: 'Cairo'),
        Space.verticalSpace18,
        const DateWidget(date: 'Sunday-Friday 10:00 AM 09:00 PM'),
        const AppDivider(),
        const PatientTests()
      ],
    ));
  }
}
