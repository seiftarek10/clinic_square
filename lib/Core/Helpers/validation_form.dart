import 'package:clinic_square/Core/Helpers/extensions.dart';
import 'package:clinic_square/Core/Helpers/regex.dart';

abstract class ValidationForm {
  static String? validEmail(String? email) {
    if (email.isNullOrEmpty()) {
      return 'Email cannot be empty';
    }
    final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+$');
    if (!emailRegex.hasMatch(email!)) {
      return 'Enter a valid email address';
    }
    return null;
  }

  static String? validPassword(String? password) {
    if (password.isNullOrEmpty()) {
      return 'Enter Valid Password';
    } else if (password!.length < 6) {
      return 'At Least 6 characters';
    }
    return null;
  }

  static String? vaildRePassword(String? rePassword, String password) {
    if (rePassword.isNullOrEmpty()) {
      return 'This is Required';
    } else if (rePassword != password) {
      return "doesn't Mathc";
    }
    return null;
  }

  static String? validPhoneNubmer(String? phone) {
    if (phone.isNullOrEmpty() || Regex.isPhoneNumberValid(phone!)) {
      return 'Enter Valid Phone Number';
    }
    return null;
  }

  static String? nullOrEmptyValidation(String? value, String label) {
    if (value.isNullOrEmpty()) {
      return "Enter Valid $label";
    }
    return null;
  }
}
