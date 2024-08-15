import 'package:clinic_square/Core/Ui_Helpers/form_conditions.dart';
import 'package:clinic_square/Core/Widgets/app_main_button.dart';
import 'package:clinic_square/Core/Widgets/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({
    super.key,
  });

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  bool showPassword = true;
  bool showRePassword = true;

  TextEditingController controller = TextEditingController();
  TextEditingController controller1 = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          AppTextField(
            hintText: 'Name',
            icon: Icons.person,
            controller: TextEditingController(),
            validator: (value) {
              return FormConditions.nullOrEmptyValidation(value,"Name");
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
            suffixIcon:
                showPassword == true ? Icons.visibility_off : Icons.visibility,
            isSecureText: showPassword,
            onPressed: () {
              setState(() {
                showPassword = !showPassword;
              });
            },
            controller: controller,
            validator: (value) {
              return "";
            },
          ),
          AppTextField(
            hintText: 'Re-Password',
            icon: Icons.lock_outline,
            suffixIcon: showRePassword == true
                ? Icons.visibility_off
                : Icons.visibility,
            isSecureText: showRePassword,
            onPressed: () {
              setState(() {
                showRePassword = !showRePassword;
              });
            },
            controller: controller1,
            validator: (value) {
              return "";
            },
          ),
          AppTextField(
            hintText: 'Age',
            icon: Icons.calendar_month,
            controller: TextEditingController(),
            validator: (value) {
              return "";
            },
          ),
          AppTextField(
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
          SizedBox(height: 18.h),
          AppButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
              } else {
                print('UnValid');
              }
            },
          ),
        ],
      ),
    );
  }
}
