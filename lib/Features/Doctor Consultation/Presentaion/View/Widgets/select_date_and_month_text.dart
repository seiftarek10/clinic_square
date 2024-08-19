
import 'package:clinic_square/Core/Themes/fonts.dart';
import 'package:flutter/material.dart';

class SelectDateAndMonthText extends StatelessWidget {
  const SelectDateAndMonthText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Select Date", style: Fonts.font20_700darkBlue),
        Text(
          "April,2024",
          style: Fonts.font14_700DarkBlue,
        )
      ],
    );
  }
}
