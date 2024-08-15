import 'package:clinic_square/Core/Helpers/extensions.dart';

abstract class FormConditions {
  static String validEmail(String? email) {
    if (email.isNullOrEmpty()) {
      return 'Enter Valid Email';
    } else {
      return '';
    }
  }
}
