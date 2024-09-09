
import 'package:clinic_square/Core/Themes/colors.dart';
import 'package:clinic_square/Core/Themes/fonts.dart';
import 'package:clinic_square/Core/Widgets/app_gesture_detector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardButton extends StatefulWidget {
  const CardButton({
    super.key,
    required this.routePage, required this.buttonTitle,
  });

  final String routePage,buttonTitle;

  @override
  State<CardButton> createState() => _CardButtonState();
}

class _CardButtonState extends State<CardButton> {
  Color _color = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: AppGestureDetector(
          onTapDownColor: Colors.blue[200]!,
          onTapUpColor: Colors.white,
          route: widget.routePage,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 3.h, horizontal: 7.w),
            decoration: BoxDecoration(
                gradient: AppColors.appGradient(5,_color),
                borderRadius: BorderRadius.circular(50)),
            child: Text(
               widget.buttonTitle,
              style: Fonts.font14_300DarkBlue.copyWith(color: Colors.white),
            ),
          ),
          onColorChanged: (color) {
            setState(() {
              _color = color;
            });
          }),
    );
  }
}