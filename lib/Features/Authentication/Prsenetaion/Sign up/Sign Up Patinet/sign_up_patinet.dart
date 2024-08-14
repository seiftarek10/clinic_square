import 'package:clinic_square/Core/Widgets/app_padding.dart';
import 'package:clinic_square/Core/Widgets/app_text_field.dart';
import 'package:clinic_square/Features/Authentication/Prsenetaion/Sign%20up/sign_up_header_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpPatinet extends StatelessWidget {
  const SignUpPatinet({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: AppPadding(
      child: Column(
        children: [
          const SignUpHeaderText(header: 'As Patient'),
          SizedBox(height: 12.h),
          AppTextField(
            hintText: 'Email',
            icon: Icons.email,
            controller: TextEditingController(),
            validator: (value) {
              return "";
            },
          ),
          AppTextField(
            hintText: "Password",
            icon: Icons.lock,
            suffixIcon: Icons.visibility,
            onPressed: () {},
            controller: TextEditingController(),
            validator: (value) {
              return "";
            },
          )
        ],
      ),
    )));
  }
}
