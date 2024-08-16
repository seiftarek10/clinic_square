
import 'package:clinic_square/Core/Themes/fonts.dart';
import 'package:flutter/material.dart';

class ForgetPassworText extends StatelessWidget {
  const ForgetPassworText({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(
        "Forget Password?",
        style: Fonts.font15_500mainBlue,
      ),
      onPressed: (){},
    );
  }
}