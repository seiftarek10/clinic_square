import 'package:clinic_square/Features/Authentication/Prsenetaion/Sign%20up/sign_up_header_text.dart';
import 'package:flutter/material.dart';

class SignUpPatinet extends StatelessWidget {
  const SignUpPatinet({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SignUpHeaderText(header: 'As Patient')
          ],
        ),
      ));
  }
}