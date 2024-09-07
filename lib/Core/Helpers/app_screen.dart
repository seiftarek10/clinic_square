import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppScreen extends StatelessWidget {
  const AppScreen({super.key, required this.child});

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: TweenAnimationBuilder(
        duration: const Duration(milliseconds: 300),
        tween: Tween<double>(begin: 0, end: 1),
        builder: (context, value, childd) {
          return Opacity(
            opacity: value,
            child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: child)),
          );
        },
      )),
    );
  }
}
