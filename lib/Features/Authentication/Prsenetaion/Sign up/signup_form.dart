import 'package:clinic_square/Core/Widgets/app_text_field.dart';
import 'package:flutter/material.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          AppTextField(
            hintText: 'Name',
            icon: Icons.person,
            controller: TextEditingController(),
            validator: (value) {
              return "";
            },
          ),
           AppTextField(
            hintText: 'Email',
            icon: Icons.email,
            controller: TextEditingController(),
            validator: (value) {
              return "";
            },
          ),
           AppTextField(
          hintText: 'Password',
          icon: Icons.lock,
          suffixIcon: Icons.visibility,
          controller: TextEditingController(),
          validator: (value) {
            return "";
          },
                    ), AppTextField(
            hintText: 'Re-Password',
            icon: Icons.email,
            suffixIcon: Icons.visibility_off,
            controller: TextEditingController(),
            validator: (value) {
              return "";
            },
          ), AppTextField(
            hintText: 'Age',
            icon: Icons.calendar_month,
            controller: TextEditingController(),
            validator: (value) {
              return "";
            },
          ), AppTextField(
            hintText: 'Mobile',
            icon: Icons.phone_android_rounded,
            controller: TextEditingController(),
            validator: (value) {
              return "";
            },
          ),
          AppTextField(
            hintText: "City",
            icon: Icons.location_on_sharp,
            controller: TextEditingController(),
            validator: (value) {
              return "";
            },
          ),
        ],
      ),
    );
  }
}