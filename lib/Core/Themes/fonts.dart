import 'dart:ui';

import 'package:clinic_square/Core/Themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class Fonts {
  static TextStyle font18_250Lightgrey = GoogleFonts.inter(
      fontSize: 18.sp, fontWeight: FontWeight.w300, color: AppColors.lightGrey);
  static TextStyle font24_700DarkBlue = GoogleFonts.inter(
      fontSize: 27.sp, fontWeight: FontWeight.w700, color: AppColors.darkBlue);
  static TextStyle font14_700DarkBlue = GoogleFonts.inter(
      fontSize: 14.sp, fontWeight: FontWeight.w700, color: AppColors.darkBlue);
  static TextStyle font14_300DarkBlue = GoogleFonts.inter(
      fontSize: 14.sp, fontWeight: FontWeight.w300, color: AppColors.darkBlue);
   static TextStyle font12_300DarkBlue = GoogleFonts.inter(
      fontSize: 12.sp, fontWeight: FontWeight.w300, color: AppColors.darkBlue);
  static TextStyle font16_600DarkBlue = GoogleFonts.inter(
      fontSize: 16.sp, fontWeight: FontWeight.w600, color: AppColors.darkBlue);
  static TextStyle font16_400DarkBlue = GoogleFonts.inter(
      fontSize: 16.sp, fontWeight: FontWeight.w400, color: AppColors.darkBlue);
}
