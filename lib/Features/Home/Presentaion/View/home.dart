import 'package:clinic_square/Core/Helpers/space.dart';
import 'package:clinic_square/Core/Widgets/app_padding.dart';
import 'package:clinic_square/Core/Widgets/scrollable_widget.dart';
import 'package:clinic_square/Features/Home/Presentaion/View/all_home_categories.dart';
import 'package:clinic_square/Features/Home/Presentaion/View/home_header_text.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
       body: AppScrollWidget(
        child: AppPadding(
          child: Column(
            children: [
              Space.topSpace,
              const HomeHeaderText(),
              Space.verticalSpace50,
              const AllHomeGategroies()
              
              ],
          )),
       ),
      ),
    );
  }
}
