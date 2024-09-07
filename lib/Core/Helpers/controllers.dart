import 'package:flutter/material.dart';

class TextFormControllers {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  TextEditingController? rePasswordController;
  TextEditingController? ageController;
  TextEditingController? locationController;
  final addressController = TextEditingController();
  final phoneController = TextEditingController();
  

  
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    rePasswordController?.dispose();
    ageController?.dispose();
    locationController?.dispose();
    addressController.dispose();
    phoneController.dispose();
  }
}
