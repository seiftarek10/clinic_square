import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppDivider extends StatelessWidget {
  const AppDivider({super.key, this.height});
  final double? height;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Divider(
        height: height?? 50.h,
      ),
    );
  }
}
