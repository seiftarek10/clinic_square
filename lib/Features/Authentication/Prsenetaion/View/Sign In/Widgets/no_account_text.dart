import 'package:clinic_square/Core/Routes/routes_path_key.dart';
import 'package:clinic_square/Core/Themes/fonts.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: "Don't Have Account? ",
          style: Fonts.font16_400DarkBlue,
          children: <TextSpan>[
            TextSpan(
                text: "Sign Up",
                style: Fonts.font16_400mainBlue,
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    GoRouter.of(context).push(Routes.singUpAs);
                  })
          ]),
    );
  }
}
