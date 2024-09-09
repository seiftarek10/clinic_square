import 'package:clinic_square/Core/Themes/fonts.dart';
import 'package:clinic_square/Core/Widgets/Buttons/card_button.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ActivityCard extends StatelessWidget {
  const ActivityCard(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.date,
      required this.cardImage,
      required this.route});
  final String title, subTitle, date, cardImage, route;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 125.h,
        width: 343.w,
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Expanded(
              flex: 4,
              child: SizedBox(
                height: double.infinity,
                child: AspectRatio(
                    aspectRatio: 1,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(cardImage, fit: BoxFit.cover))),
              )),
          SizedBox(width: 16.w),
          Expanded(
              flex: 7,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 4.h),
                    Text(title,
                        style: Fonts.font16_600DarkBlue
                            .copyWith(overflow: TextOverflow.ellipsis)),
                    SizedBox(height: 6.h),
                    Text(subTitle,
                        maxLines: 2,
                        style: Fonts.font14_400DarkBlue
                            .copyWith(overflow: TextOverflow.ellipsis)),
                    SizedBox(height: 4.h),
                    Text(maxLines: 1, date, style: Fonts.font14_500DarkBlue),
                     CardButton(
                        routePage: route,
                        buttonTitle: "View")
                  ]))
        ]));
  }

}
