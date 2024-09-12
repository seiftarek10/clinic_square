import 'package:clinic_square/Core/Routes/routes_path_key.dart';
import 'package:clinic_square/Core/utils/assets.dart';
import 'package:clinic_square/Features/Patient/Home/Presentation/View/Widgets/home_category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class AllHomeGategroies extends StatelessWidget {
  const AllHomeGategroies({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 20.h,
      spacing: 10.w,
      direction: Axis.horizontal,
      children: const[
        HomeCategory(
          categoryIcon: Assets.doctorConulationIcon,
          category: 'Consultaion',
          routePage: Routes.doctorConsultation,
        
        ),
        HomeCategory(
          categoryIcon: Assets.labIcon,
          category: 'Lab',
          routePage: Routes.eLab,
          
        ),
        HomeCategory(
          categoryIcon: Assets.pharmacyIcon,
          category: 'Pharmacy',
          routePage: Routes.ePharmacy,
         
        ),
        HomeCategory(
          categoryIcon: Assets.homeVisitIcon,
          category: 'Home Visit',
          routePage: "DD",
        ),
        HomeCategory(
          categoryIcon: Assets.bmiCalculatorIcon,
          category: 'Bmi Calculator',
          imageFlex: 6,
          routePage: "DD",
          textFlex: 5,
        ),
        HomeCategory(
          categoryIcon: Assets.medicalQuestionIcon,
          category: 'Medical Quesitions',
          imageFlex: 6,
          textFlex: 5,
          routePage: "DD",
        ),
      ],
    );
  }
}
