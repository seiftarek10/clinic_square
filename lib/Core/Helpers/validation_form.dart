import 'package:clinic_square/Core/Helpers/extensions.dart';
import 'package:clinic_square/Core/Helpers/regex.dart';

abstract class ValidationForm {
  static String validEmail(String? email) {
    if (email.isNullOrEmpty() || Regex.isEmailValid(email!)) {
      return 'Enter Valid Email';
    } else {
      return '';
    }
  }

  static String validPassword(String? pass) {
    if (pass.isNullOrEmpty()) {
      return 'Enter Valid Password';
    } else if (pass!.length < 6) {
      return 'At Least 6 characters';
    } else {
      return '';
    }
  }

  static String vaildRePassword(String? rePassword, String password) {
    if (rePassword.isNullOrEmpty()) {
      return 'This is Required';
    } else if (rePassword != password) {
      return "doesn't Mathc";
    } else {
      return '';
    }
  }

  static String validPhoneNubmer(String? phone) {
    if (phone.isNullOrEmpty() || Regex.isPhoneNumberValid(phone!)) {
      return 'Enter Valid Phone Number';
    } else {
      return '';
    }
  }

  static String nullOrEmptyValidation(String? value, String label) {
    if (value.isNullOrEmpty()) {
      return "Enter Valid $label";
    } else {
      return '';
    }
  }
}
