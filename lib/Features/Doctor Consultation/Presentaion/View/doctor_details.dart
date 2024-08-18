import 'package:clinic_square/Core/Helpers/space.dart';
import 'package:clinic_square/Core/Routes/routes_path_key.dart';
import 'package:clinic_square/Core/Widgets/app_main_button.dart';
import 'package:clinic_square/Core/Widgets/app_padding.dart';
import 'package:clinic_square/Core/Widgets/divider.dart';
import 'package:clinic_square/Core/Widgets/header_bar.dart';
import 'package:clinic_square/Core/Widgets/scrollable_widget.dart';
import 'package:clinic_square/Features/Doctor%20Consultation/Presentaion/View/Widgets/doctor_card.dart';
import 'package:clinic_square/Features/Doctor%20Consultation/Presentaion/View/Widgets/doctor_info_in_doctor_details_page.dart';
import 'package:clinic_square/Features/Doctor%20Consultation/Presentaion/View/Widgets/review_icon.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DoctorDetailsPage extends StatelessWidget {
  const DoctorDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: AppScrollWidget(
            child: AppPadding(
                child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Space.topSpace20,
            const HeaderBar(headerText: 'Doctor Info'),
            Space.verticalSpace18,
            const Row(
              children: [
                Expanded(flex: 7, child: DoctorCard(isClickable: false)),
                Expanded(child: ReviewIcon())
              ],
            ),
            const AppDivider(),
            const DoctorInfoConsultation(),
            Space.verticalSpace50,
            Align(
                alignment: Alignment.center,
                child: AppButton(
                    onPressed: () {
                      GoRouter.of(context).push(Routes.bookAppoinment);
                    },
                    text: 'Book'))
          ],
        ))),
      ),
    );
  }
}
