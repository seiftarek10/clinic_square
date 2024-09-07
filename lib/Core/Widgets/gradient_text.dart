import 'package:clinic_square/Core/Themes/colors.dart';
import 'package:flutter/material.dart';

class GradientText extends StatelessWidget {
  final String text;

  const GradientText(
    this.text, {super.key, 
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(
        transform: const GradientRotation(5),
        colors: [AppColors.mainBlue,Colors.blue[100]!],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        
      ).createShader(bounds),
      child: Text(
        text,
        style: const TextStyle(fontSize: 50,fontWeight: FontWeight.w700,color: Colors.white) 
      ),
    );
  }
}