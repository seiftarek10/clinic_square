import 'package:clinic_square/Core/Helpers/app_screen.dart';
import 'package:clinic_square/Core/Helpers/space.dart';
import 'package:clinic_square/Features/Home/Presentaion/View/Widgets/ai_category_card.dart';
import 'package:clinic_square/Features/Home/Presentaion/View/Widgets/all_home_categories.dart';
import 'package:clinic_square/Features/Home/Presentaion/View/Widgets/home_header_text.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScreen(
        child: Column(
      children: [
        Space.topSpace40,
        const HomeHeaderText(),
        Space.verticalSpace24,
        const AllHomeGategroies(),
        Space.verticalSpace12,
        const AiCard()
      ],
    ));
  }
}
