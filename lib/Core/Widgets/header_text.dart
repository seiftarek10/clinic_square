import 'package:clinic_square/Core/Themes/colors.dart';
import 'package:clinic_square/Core/Themes/fonts.dart';
import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({super.key, required this.title, required this.subTitle});
  final String title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
            style:
                Fonts.font40_700mainBlue.copyWith(color: AppColors.mainBlue)),
        Text(
          subTitle,
          style: Fonts.font14_300DarkBlue,
        ),
      ],
    );
  }
}
