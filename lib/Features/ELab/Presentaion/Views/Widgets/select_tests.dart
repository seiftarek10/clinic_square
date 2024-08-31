import 'package:clinic_square/Core/Themes/fonts.dart';
import 'package:clinic_square/Features/ELab/Presentaion/Views/Widgets/test.dart';
import 'package:flutter/material.dart';

class SelectTests extends StatelessWidget {
  const SelectTests({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [Text("Select Test", style: Fonts.font20_700darkBlue), Test()],
    );
  }
}
