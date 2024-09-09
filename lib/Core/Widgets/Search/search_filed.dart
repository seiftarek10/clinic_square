import 'package:clinic_square/Core/Themes/colors.dart';
import 'package:clinic_square/Core/Themes/fonts.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          contentPadding: EdgeInsets.zero,
          prefixIcon: Icon(
            EvaIcons.searchOutline,
            size: 28,
            color: AppColors.middleGrey,
          ),
          hintText: 'Search',
          hintStyle:
              Fonts.font16_400DarkBlue.copyWith(color: AppColors.middleGrey),
          fillColor: AppColors.appBackgroundGrey,
          filled: true,
          enabledBorder: borderStyle(),
          focusedBorder: borderStyle()),
    );
  }
   OutlineInputBorder borderStyle() {
    return OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.appBackgroundGrey!, width: 0),
        borderRadius: BorderRadius.circular(10));
  }
}
