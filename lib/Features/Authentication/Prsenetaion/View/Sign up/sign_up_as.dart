import 'package:clinic_square/Core/Helpers/app_screen.dart';
import 'package:clinic_square/Core/Helpers/space.dart';
import 'package:clinic_square/Core/Widgets/header_text.dart';
import 'package:clinic_square/Features/Authentication/Prsenetaion/View/Sign%20up/Widgets/all_roles._list.dart';
import 'package:clinic_square/Features/Authentication/Prsenetaion/View/Sign%20up/Widgets/already_have_account.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpAsView extends StatelessWidget {
  const SignUpAsView({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScreen(
      child: Column(
        children: [
          Space.topSpace40,
          const HeaderText(
            title: 'Sing Up As',
            subTitle:
                'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
          ),
          SizedBox(
            height: 30.h,
          ),
          const AllRolesList(),
          Space.verticalSpace12,
          const AlreadyHaveAccountText(),
        ],
      ),
    );
  }
}
