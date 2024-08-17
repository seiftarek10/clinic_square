import 'package:clinic_square/Features/Home/Presentaion/View/home_category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllHomeGategroies extends StatelessWidget {
  const AllHomeGategroies({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 10.w,
      spacing: 10.h,
      direction: Axis.horizontal,
      children: const [
        HomeCategory(
          category: 'Consultaion',
          imageFlex: 2,
          textFlex: 1,
        ),
        HomeCategory(
          category: 'Lab',
          imageFlex: 2,
          textFlex: 1,
        ),
        HomeCategory(
          category: 'Pharmacy',
          imageFlex: 2,
          textFlex: 1,
        ),
        HomeCategory(
          category: 'Home Visit',
          imageFlex: 2,
          textFlex: 1,
        ),
        HomeCategory(
          category: 'Bmi Calculator',
          imageFlex: 6,
          textFlex: 5,
        ),
        HomeCategory(
          category: 'Medical Quesitions',
          imageFlex: 6,
          textFlex: 5,
        ),
      ],
    );
  }
}
