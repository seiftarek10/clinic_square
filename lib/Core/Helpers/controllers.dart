import 'package:flutter/material.dart';

class Controllers {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  TextEditingController? rePasswordController;
  final addressController = TextEditingController();
  final phoneController = TextEditingController();

  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    rePasswordController?.dispose();
    addressController.dispose();
    phoneController.dispose();
  }
}
