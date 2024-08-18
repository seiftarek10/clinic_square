import 'package:clinic_square/Core/Helpers/space.dart';
import 'package:clinic_square/Core/Widgets/app_padding.dart';
import 'package:clinic_square/Core/Widgets/scrollable_widget.dart';
import 'package:clinic_square/Core/Widgets/header_text.dart';
import 'package:flutter/material.dart';

class DoctorsConsultaion extends StatelessWidget {
  const DoctorsConsultaion({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: AppScrollWidget(
            child: AppPadding(
                child: Column(
          children: [
            Space.verticalSpace18,
            const HeaderText(
              title: 'Doctors',
              subTitle: 'Browse Our Comprehensive List of Expert Doctors: Find the Right Specialist for Your Needs',
            )],
        ))),
      ),
    );
  }
}
