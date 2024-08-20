import 'package:clinic_square/Core/Themes/fonts.dart';
import 'package:flutter/material.dart';

class PolicesAndContions extends StatelessWidget {
  const PolicesAndContions({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          text: 'By logging, you agree to our ',
          style: Fonts.font14_300DarkBlue,
          children: <TextSpan>[
            TextSpan(
                text: 'Terms & Conditions', style: Fonts.font14_700darkBlue),
            const TextSpan(text: ' and '),
            TextSpan(text: 'Privacy Policy', style: Fonts.font14_700darkBlue)
          ]),
    );
  }
}
//By logging, you agree to our  Terms & Conditions and PrivacyPolicy.