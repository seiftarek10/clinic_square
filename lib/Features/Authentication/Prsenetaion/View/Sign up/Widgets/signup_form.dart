import 'package:clinic_square/Core/Helpers/validation_form.dart';
import 'package:clinic_square/Core/Widgets/app_text_field.dart';
import 'package:flutter/material.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({
    super.key,
    required this.showAgeField,
    this.location,
  });

  final bool showAgeField;
  final String? location;

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  bool showPassword = true;
  bool showRePassword = true;

  TextEditingController controller = TextEditingController();
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();
  TextEditingController controller4 = TextEditingController();
  TextEditingController controller5 = TextEditingController();
  TextEditingController controller6 = TextEditingController();
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
            controller: controller,
            validator: (name)=> ValidationForm.nullOrEmptyValidation(name, "Name"),
          ),
          AppTextField(
            hintText: 'Email',
            icon: Icons.email,
            controller: controller1,
            validator: ValidationForm.validEmail,
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
            controller: controller2,
            validator: ValidationForm.validPassword,
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
            controller: controller3,
            validator: (rePassword)=>ValidationForm.vaildRePassword(rePassword,'123456' ),
          ),
          widget.showAgeField == false
              ? const SizedBox.shrink()
              : AppTextField(
                  hintText: 'Age',
                  icon: Icons.calendar_month,
                  controller: controller6,
                  validator: (age)=>ValidationForm.nullOrEmptyValidation(age, "Age"),
                ),
          AppTextField(
            hintText: 'Mobile',
            icon: Icons.phone_android_rounded,
            controller: controller4,
            validator: ValidationForm.validPhoneNubmer,
          ),
          AppTextField(
            hintText: widget.location ?? "City",
            icon: Icons.location_on_sharp,
            controller: controller5,
            validator: (city)=>ValidationForm.nullOrEmptyValidation(city, "City"),
          ),
        
        ],
      ),
    );
  }
}
