import 'package:clinic_square/Core/Themes/fonts.dart';
import 'package:clinic_square/Core/Widgets/animated_selection.dart';
import 'package:clinic_square/Core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MedicationCard extends StatelessWidget {
  const MedicationCard({
    super.key,
    required this.isSelected, required this.onTap,
  });

  final bool isSelected;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.h,
      width: double.infinity,
      child: Row(
        children: [
          Expanded(child: Image.asset(Assets.pharmacyIcon, fit: BoxFit.cover)),
          SizedBox(width: 6.w),
          Expanded(
              flex: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Medication Name", style: Fonts.font16_600DarkBlue),
                      Text(
                        "Medication Price",
                        style: Fonts.font14_500DarkBlue,
                      ),
                    ],
                  ),
                  AnimatedSelctionIcon(isSelected: isSelected,onTap: onTap)
                ],
              ))
        ],
      ),
    );
  }
}
