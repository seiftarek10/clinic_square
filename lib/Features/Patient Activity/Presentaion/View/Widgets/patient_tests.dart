import 'package:clinic_square/Core/Helpers/space.dart';
import 'package:clinic_square/Core/Themes/fonts.dart';
import 'package:clinic_square/Core/Widgets/dots_page_view.dart';
import 'package:clinic_square/Core/utils/assets.dart';
import 'package:flutter/material.dart';

class PatientTests extends StatelessWidget {
  const PatientTests({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Tests",
          style: Fonts.font24_700darkBlue
              .copyWith(decoration: TextDecoration.underline)),
      Space.verticalSpace18,
      const DotsPageView(
          test: [Assets.labActivity, Assets.doctorConulationIcon]),
    ]);
  }
}
