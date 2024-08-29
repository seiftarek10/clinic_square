import 'package:clinic_square/Core/Routes/routes_path_key.dart';
import 'package:clinic_square/Core/utils/assets.dart';
import 'package:clinic_square/Features/Home/Presentaion/View/Widgets/home_category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class AllHomeGategroies extends StatelessWidget {
  const AllHomeGategroies({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 20.w,
      spacing: 10.h,
      direction: Axis.horizontal,
      children: [
        HomeCategory(
          categoryIcon: Assets.doctorConulationIcon,
          category: 'Consultaion',
          onTap: () {
            GoRouter.of(context).push(Routes.doctorConsultation);
          },
        ),
        HomeCategory(
          categoryIcon: Assets.labIcon,
          category: 'Lab',
          onTap: () {
            GoRouter.of(context).push(Routes.eLab);
          },
        ),
        HomeCategory(
          categoryIcon: Assets.pharmacyIcon,
          category: 'Pharmacy',
          onTap: () {},
        ),
        HomeCategory(
          categoryIcon: Assets.homeVisitIcon,
          category: 'Home Visit',
          onTap: () {},
        ),
        HomeCategory(
          categoryIcon: Assets.bmiCalculatorIcon,
          category: 'Bmi Calculator',
          imageFlex: 6,
          textFlex: 5,
          onTap: () {},
        ),
        HomeCategory(
          categoryIcon: Assets.medicalQuestionIcon,
          category: 'Medical Quesitions',
          imageFlex: 6,
          textFlex: 5,
          onTap: () {},
        ),
      ],
    );
  }
}
