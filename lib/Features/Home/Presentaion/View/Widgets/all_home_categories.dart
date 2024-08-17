import 'package:clinic_square/Core/utils/assets.dart';
import 'package:clinic_square/Features/Home/Presentaion/View/Widgets/home_category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllHomeGategroies extends StatelessWidget {
  const AllHomeGategroies({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 20.w,
      spacing: 10.h,
      direction: Axis.horizontal,
      children: const [
        HomeCategory(
          categoryIcon: Assets.doctorConulation,
          category: 'Consultaion',
        ),
        HomeCategory(
          categoryIcon: Assets.lab,
          category: 'Lab',
        ),
        HomeCategory(
          categoryIcon: Assets.pharmacy,
          category: 'Pharmacy',
        ),
        HomeCategory(
          categoryIcon: Assets.homeVisit,
          category: 'Home Visit',
        ),
        HomeCategory(
          categoryIcon: Assets.bmiCalculator,
          category: 'Bmi Calculator',
          imageFlex: 6,
          textFlex: 5,
        ),
        HomeCategory(
          categoryIcon: Assets.medicalQuestion,
          category: 'Medical Quesitions',
          imageFlex: 6,
          textFlex: 5,
        ),
      ],
    );
  }
}

