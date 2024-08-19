
import 'package:clinic_square/Core/Themes/colors.dart';
import 'package:clinic_square/Core/Themes/fonts.dart';
import 'package:flutter/material.dart';

class PaymentOption extends StatelessWidget {
  const PaymentOption({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            activeColor: AppColors.mainBlue,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)),
            value: true,
            onChanged: (val) {}),
        Text("Credit Card", style: Fonts.font16_600DarkBlue)
      ],
    );
  }
}
