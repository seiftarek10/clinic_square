import 'package:clinic_square/Core/Routes/routes_path_key.dart';
import 'package:clinic_square/Core/Themes/colors.dart';
import 'package:clinic_square/Core/Themes/fonts.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
            text: "Already have an account yet? ",
            style: Fonts.font16_400DarkBlue,
            children: <TextSpan>[
          TextSpan(
              text: 'Sign In',
              style:
                  Fonts.font16_400DarkBlue.copyWith(color: AppColors.mainBlue),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  GoRouter.of(context).push(Routes.signin);
                })
        ]));
  }
}
