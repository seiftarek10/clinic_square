import 'package:clinic_square/Core/Helpers/space.dart';

import 'package:clinic_square/Core/Themes/fonts.dart';
import 'package:clinic_square/Features/Doctor%20Consultation/Presentaion/View/Widgets/avaliable_doctor_days.dart';
import 'package:flutter/material.dart';

class SelectDate extends StatelessWidget {
  const SelectDate({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Select Date",style:Fonts.font20_700darkBlue),
            Text("April,2024",style:Fonts.font14_700DarkBlue,)
          ],
        ),
        Space.verticalSpace18,
        const AvaliableDoctorDaysList(),
        
      ],
    );
  }
}

