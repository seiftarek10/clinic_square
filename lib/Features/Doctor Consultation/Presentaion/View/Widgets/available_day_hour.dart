
import 'package:clinic_square/Core/Helpers/space.dart';
import 'package:clinic_square/Core/Themes/fonts.dart';
import 'package:flutter/material.dart';

class AvailableHourDay extends StatelessWidget {
  const AvailableHourDay({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Available Time",style: Fonts.font20_700darkBlue),
        Space.bottomSpace,
        Text('From 8.00 AM To 5.00 PM',style: Fonts.font16_400DarkBlue),
      ],
    );
  }
}
