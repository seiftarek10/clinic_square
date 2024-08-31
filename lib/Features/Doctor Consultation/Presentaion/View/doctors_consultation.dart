import 'package:clinic_square/Core/Helpers/space.dart';
import 'package:clinic_square/Core/Widgets/app_padding.dart';
import 'package:clinic_square/Core/Widgets/header_bar.dart';
import 'package:clinic_square/Core/Widgets/scrollable_widget.dart';
import 'package:clinic_square/Features/Doctor%20Consultation/Presentaion/View/Widgets/doctors_list_view.dart';
import 'package:clinic_square/Core/Widgets/search_section.dart';
import 'package:flutter/material.dart';

class DoctorsConsultaionView extends StatelessWidget {
  const DoctorsConsultaionView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: AppScrollWidget(
            child: AppPadding(
                child: Column(
          children: [
            Space.topSpace20,
            const HeaderBar(
              headerText: 'Doctors',
            ),
            Space.verticalSpace18,
            const SearchSection(
              filterLabel: 'Speciality',
            ),
            Space.verticalSpace12,
            const DoctorsListView()
          ],
        ))),
      ),
    );
  }
}
