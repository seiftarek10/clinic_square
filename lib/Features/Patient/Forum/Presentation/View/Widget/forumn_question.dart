import 'package:clinic_square/Core/Themes/colors.dart';
import 'package:clinic_square/Core/Themes/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ForumQuestion extends StatelessWidget {
  const ForumQuestion({
    super.key, required this.title, required this.subTitle,
  });

  final String title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 30),
      child: Row(
        children: [
          Expanded(
            child: Container(
                height: 60.h,
                decoration: BoxDecoration(
                    gradient: AppColors.appGradient(4), shape: BoxShape.circle),
                child: Icon(FontAwesomeIcons.question,
                    color: Colors.white, size: 33.h)),
          ),
          const SizedBox(width: 16),
          Expanded(
              flex: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: Fonts.font18_600DarkBlue),
                  SizedBox(height: 2.h),
                  Text(
                      subTitle,
                      style: Fonts.font14_400DarkBlue),
                ],
              ))
        ],
      ),
    );
  }
}