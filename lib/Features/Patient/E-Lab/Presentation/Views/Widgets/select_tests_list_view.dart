import 'package:clinic_square/Core/Helpers/space.dart';
import 'package:clinic_square/Core/Themes/fonts.dart';
import 'package:clinic_square/Features/Patient/E-Lab/Presentation/Views/Widgets/tests.listview.dart';
import 'package:flutter/material.dart';

class SelectTests extends StatelessWidget {
  const SelectTests({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Select Test", style: Fonts.font20_700darkBlue),
            Text(
              "Total : 90",
              style: Fonts.font14_700darkBlue,
            )
          ],
        ),
        Space.verticalSpace18,
        TestsListView()
      ],
    );
  }
}
