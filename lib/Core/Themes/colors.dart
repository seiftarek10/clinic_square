import 'package:flutter/material.dart';

abstract class AppColors {
  static Color mainBlue = const Color(0xff247CFF);
  static Color darkBlue = const Color(0xff27272C);
  static LinearGradient appGradient (double rotation){
    return  LinearGradient(
      colors:  [const Color(0xff247CFF), Colors.blue[100]!],
      transform: GradientRotation(rotation));
  } 
  static final middleGrey = Colors.grey[500];
  static final appBackgroundGrey = Colors.grey[200];
}
