import 'package:clinic_square/Core/Themes/fonts.dart';
import 'package:flutter/material.dart';

class AiCardButton extends StatelessWidget {
  const AiCardButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){},
      child: Text('Try Now',style: Fonts.font15_500mainBlue),
    );
  }
}