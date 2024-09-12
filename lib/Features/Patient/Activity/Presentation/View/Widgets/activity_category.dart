import 'package:clinic_square/Core/Themes/colors.dart';
import 'package:clinic_square/Core/Themes/fonts.dart';
import 'package:clinic_square/Core/Widgets/app_gesture_detector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ActivityContainerCategory extends StatefulWidget {
  const ActivityContainerCategory(
      {super.key,
      required this.cardPhoto,
      required this.cardTitle,
      this.needPhotoPadding,
      required this.routePage});

  final String cardPhoto, cardTitle, routePage;
  final bool? needPhotoPadding;

  @override
  State<ActivityContainerCategory> createState() =>
      _ActivityContainerCategoryState();
}

class _ActivityContainerCategoryState extends State<ActivityContainerCategory> {
   Color _color=Colors.blue[100]!;
  @override
  Widget build(BuildContext context) {
    return AppGestureDetector(
      onTapDownColor: Colors.blue[100]!,
      onTapUpColor: Colors.white,
      onColorChanged: (color) {
        setState(() {
          _color = color;
        });
      },
      route: widget.routePage,
      child: Container(
          height: 130.h,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 10,
                color: Colors.grey[800]!,
                spreadRadius: 0.7,
              )
            ],
            gradient: AppColors.appGradient(3,_color),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Expanded(
                  child: Padding(
                padding: widget.needPhotoPadding == true
                    ? const EdgeInsets.only(left: 4)
                    : EdgeInsets.zero,
                child: Image.asset(widget.cardPhoto, fit: BoxFit.cover),
              )),
              Expanded(
                  flex: 2,
                  child: Padding(
                      padding: EdgeInsets.only(left: 16.w),
                      child: Text(
                        widget.cardTitle,
                        style: Fonts.font24_700mainBlue
                            .copyWith(color: Colors.white),
                      )))
            ],
          )),
    );
  }
}

