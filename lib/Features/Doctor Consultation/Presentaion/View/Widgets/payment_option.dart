import 'package:clinic_square/Core/Themes/colors.dart';
import 'package:clinic_square/Core/Themes/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentOption extends StatelessWidget {
  const PaymentOption({
    super.key, required this.title, required this.isChecked, required this.onChanged,
  });

  final String title;
  final bool isChecked;
  final void Function(bool?) onChanged;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 44.w),
        Checkbox(
            activeColor: AppColors.mainBlue,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            value: isChecked,
            onChanged: onChanged),
        Text(title, style: Fonts.font16_600DarkBlue)
      ],
    );
  }
}
