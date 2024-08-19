import 'package:clinic_square/Core/Helpers/space.dart';
import 'package:clinic_square/Features/Doctor%20Consultation/Presentaion/View/Widgets/available_day_hour.dart';
import 'package:clinic_square/Features/Doctor%20Consultation/Presentaion/View/Widgets/avaliable_doctor_days.dart';
import 'package:clinic_square/Features/Doctor%20Consultation/Presentaion/View/Widgets/select_date_and_month_text.dart';
import 'package:flutter/material.dart';

class SelectDate extends StatelessWidget {
  const SelectDate({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SelectDateAndMonthText(),
        Space.verticalSpace18,
        const AvaliableDoctorDaysList(),
        Space.verticalSpace18,
        const AvailableHourDay(),
        
      ],
      
    );
  }
}
