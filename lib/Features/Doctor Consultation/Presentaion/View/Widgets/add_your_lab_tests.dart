
import 'package:clinic_square/Features/Doctor%20Consultation/Presentaion/View/Widgets/attach_file.dart';
import 'package:clinic_square/Features/Doctor%20Consultation/Presentaion/View/Widgets/file_info.dart';
import 'package:flutter/material.dart';


class AddYourLabTestsWidget extends StatelessWidget {
  const AddYourLabTestsWidget({super.key});
  final bool attach = false;
  @override
  Widget build(BuildContext context) {
    return attach == false
        ? const AttachFile()
        : const FileInfo();
  }
}

