import 'package:clinic_square/Core/Themes/colors.dart';
import 'package:clinic_square/Core/Themes/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ActivityCard extends StatelessWidget {
  const ActivityCard(
      {super.key,
      required this.cardPhoto,
      required this.cardTitle,
      this.needPhotoPadding});

  final String cardPhoto, cardTitle;
  final bool? needPhotoPadding;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 130.h,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              color: Colors.grey[800]!,
              spreadRadius: 0.7,
            )
          ],
          gradient: LinearGradient(
            colors: [AppColors.mainBlue, Colors.white],
            transform: const GradientRotation(3),
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
        children: [
        Expanded(
      child: Padding(
    padding: needPhotoPadding == true
        ? const EdgeInsets.only(left: 6, bottom: 1)
        : EdgeInsets.zero,
    child: Image.asset(cardPhoto, fit: BoxFit.cover),
        )),
        Expanded(
      flex: 2,
      child: Padding(
          padding: EdgeInsets.only(left: 16.w),
          child: Text(
            cardTitle,
            style: Fonts.font24_700mainBlue
                .copyWith(color: Colors.white),
          )))
        ],
      ));
  }
}


