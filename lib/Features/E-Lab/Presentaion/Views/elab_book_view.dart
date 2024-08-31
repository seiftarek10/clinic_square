import 'package:clinic_square/Core/Helpers/app_screen.dart';
import 'package:clinic_square/Core/Helpers/space.dart';
import 'package:clinic_square/Core/Widgets/app_main_button.dart';
import 'package:clinic_square/Core/Widgets/divider.dart';
import 'package:clinic_square/Core/Widgets/header_bar.dart';
import 'package:clinic_square/Core/Widgets/location_widget.dart';
import 'package:clinic_square/Features/E-Lab/Presentaion/Views/Widgets/elab_work_days.dart';
import 'package:clinic_square/Features/E-Lab/Presentaion/Views/Widgets/select_tests_list_view.dart';
import 'package:flutter/material.dart';

class ElabBookView extends StatelessWidget {
  const ElabBookView({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScreen(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Space.topSpace20,
        const HeaderBar(headerText: "Lab Name"),
        Space.verticalSpace24,
        const LocationWidget(
          location: "Maadi",
        ),
        const AppDivider(height: 35),
        const ELabWorkDays(),
        const AppDivider(height: 35),
        Space.verticalSpace12,
        const SelectTests.SelectTestsListView(),
        AppButton(onPressed: () {}, text: "Book"),
        Space.verticalSpace12
      ],
    ));
  }
}
