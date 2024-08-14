import 'package:clinic_square/Core/Themes/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RoleContainer extends StatelessWidget {
  const RoleContainer({
    super.key,
    required this.role,
    required this.icon, required this.width,
  });

  final String role;
  final IconData icon;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.symmetric(vertical: 12.h),
      width: double.infinity,
      padding: EdgeInsetsDirectional.symmetric(vertical: 12.h, horizontal: 8.w),
      decoration: BoxDecoration(
          border: Border.all(
            width: 3,
          ),
          borderRadius: BorderRadius.circular(40)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon),
          SizedBox(
            width: width,
          ),
          Text(
            role,
            style: Fonts.font20_700darkBlue,
          ),
        ],
      ),
    );
  }
}
