import 'package:clinic_square/Core/Themes/fonts.dart';
import 'package:clinic_square/Core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AvailableHourDay extends StatelessWidget {
  const AvailableHourDay({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          Assets.dateIcon,
          height: 50.h,
        ),
        SizedBox(width: 12.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Available Time", style: Fonts.font20_700darkBlue),
            Text('From 8.00 AM To 5.00 PM', style: Fonts.font16_400DarkBlue),
          ],
        ),
      ],
    );
  }
}
