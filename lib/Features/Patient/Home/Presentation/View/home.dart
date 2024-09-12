import 'package:clinic_square/Core/Helpers/app_screen.dart';
import 'package:clinic_square/Core/Helpers/space.dart';
import 'package:clinic_square/Features/Patient/Home/Presentation/View/Widgets/ai_card.dart';
import 'package:clinic_square/Features/Patient/Home/Presentation/View/Widgets/all_home_categories.dart';
import 'package:clinic_square/Features/Patient/Home/Presentation/View/Widgets/home_header_text.dart';
import 'package:flutter/material.dart';

class PatientHomePage extends StatelessWidget {
  const PatientHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScreen(
        child: Column(
      children: [
        Space.topSpace20,
        const HomeHeaderText(),
        Space.verticalSpace24,
        const AllHomeGategroies(),
        Space.verticalSpace12,
        const AiCard(),
      ],
    ));
  }
}
