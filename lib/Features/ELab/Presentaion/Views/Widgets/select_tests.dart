import 'package:clinic_square/Core/Helpers/space.dart';
import 'package:clinic_square/Core/Themes/fonts.dart';
import 'package:clinic_square/Features/ELab/Presentaion/Views/Widgets/test.dart';
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
            Text("Total : 90",style: Fonts.font14_700darkBlue,)
          ],
        ),
        Space.verticalSpace18,
        ListView.builder(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemCount: 20,
            itemBuilder: (BuildContext context, int index) {
              return const Test();
            })
      ],
    );
  }
}
