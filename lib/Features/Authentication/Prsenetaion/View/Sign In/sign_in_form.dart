import 'package:clinic_square/Core/Ui_Helpers/form_conditions.dart';
import 'package:clinic_square/Core/Widgets/app_text_field.dart';
import 'package:flutter/material.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  bool _showPassword = false;
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children: [
          AppTextField(
              hintText: 'Email',
              icon: Icons.email,
              controller: TextEditingController(),
              validator: (value) {
                return FormValidation.nullOrEmptyValidation(value, 'Email');
              }),
          AppTextField(
            hintText: 'Password',
            icon: Icons.lock,
            suffixIcon:
                _showPassword == true ? Icons.visibility_off : Icons.visibility,
            isSecureText: _showPassword,
            onPressed: () {
              setState(() {
                _showPassword = !_showPassword;
              });
            },
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
