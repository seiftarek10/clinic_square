import 'package:clinic_square/Core/Themes/fonts.dart';
import 'package:clinic_square/Core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DateWidget extends StatelessWidget {
  const DateWidget({super.key, required this.date});

  final String date;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          Assets.dateIcon,
          height: 37.h,
        ),
        SizedBox(width: 12.w),
        Text(date, style: Fonts.font18_600DarkBlue),
      ],
    );
  }
}
