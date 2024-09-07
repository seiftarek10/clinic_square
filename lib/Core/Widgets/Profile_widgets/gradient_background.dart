import 'package:clinic_square/Core/Themes/colors.dart';
import 'package:flutter/material.dart';

class GradientBackground extends StatelessWidget {
  const GradientBackground({
    super.key, required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [AppColors.mainBlue, Colors.white],
              begin: Alignment.topCenter,
              end: Alignment.center,
              
              // transform: GradientRotation(1)
              )),
      child: child
    );
  }
}