import 'package:clinic_square/Core/Themes/colors.dart';
import 'package:flutter/material.dart';

class AppGradientText extends StatelessWidget {
  final String text;

  const AppGradientText(
    this.text, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => AppColors.appGradient(2).createShader(bounds),
      child: Text(text,
          style: const TextStyle(
              fontSize: 50, fontWeight: FontWeight.w700, color: Colors.white)),
    );
  }
}
