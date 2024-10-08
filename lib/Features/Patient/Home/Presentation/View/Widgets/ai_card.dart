import 'package:clinic_square/Core/Themes/colors.dart';
import 'package:clinic_square/Core/Themes/fonts.dart';
import 'package:clinic_square/Core/utils/assets.dart';
import 'package:clinic_square/Features/Patient/Home/Presentation/View/Widgets/ai_card_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AiCard extends StatelessWidget {
  const AiCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 195.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 150.h,
            width: double.infinity,
            padding: EdgeInsetsDirectional.symmetric(
                horizontal: 10.w, vertical: 16.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              gradient: AppColors.appGradient(7)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Our AI model accurately\ndetermines the specialty\ncare your needs',
                  style: Fonts.font16_600White,
                ),
                const AiCardButton()
              ],
            ),
          ),
          Positioned(
              right: 8.w,
              top: 0,
              child: Image.asset(
                Assets.robotIcon,
                height: 200,
                fit: BoxFit.fill,
              ))
        ],
      ),
    );
  }
}
