import 'package:clinic_square/Core/Helpers/app_screen.dart';
import 'package:clinic_square/Core/Helpers/space.dart';
import 'package:clinic_square/Core/Widgets/app_main_button.dart';
import 'package:clinic_square/Core/Widgets/divider.dart';
import 'package:clinic_square/Core/Widgets/header_bar.dart';
import 'package:clinic_square/Features/Doctor%20Consultation/Presentaion/View/Widgets/add_your_lab_tests.dart';
import 'package:clinic_square/Features/Doctor%20Consultation/Presentaion/View/Widgets/payment_method.dart';
import 'package:clinic_square/Features/Doctor%20Consultation/Presentaion/View/Widgets/select_date.dart';
import 'package:flutter/material.dart';

class BookAppoinmentView extends StatelessWidget {
  const BookAppoinmentView({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScreen(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Space.topSpace20,
        const HeaderBar(headerText: 'Book Appoinment'),
        Space.verticalSpace18,
        const SelectDate(),
        const AppDivider(),
        const AddYourLabTestsWidget(),
        const AppDivider(),
        const PaymentMethod(),
        Space.verticalSpace18,
        AppButton(onPressed: () {}, text: "Book")
      ],
    ));
  }
}
