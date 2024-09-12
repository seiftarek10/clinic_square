import 'package:clinic_square/Core/Helpers/space.dart';
import 'package:clinic_square/Core/Themes/fonts.dart';
import 'package:clinic_square/Features/Patient/E-Lab/Presentation/Views/Widgets/test.dart';
import 'package:flutter/material.dart';

class SelectTests extends StatefulWidget {
  const SelectTests({super.key});

  @override
  State<SelectTests> createState() => _SelectTestsState();
}

class _SelectTestsState extends State<SelectTests> {
  final Set<int> _selectedIndices = {};
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
        ListView.builder(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemCount: 4,
            itemBuilder: (BuildContext context, int index) {
              bool selectedIndex = _selectedIndices.contains(index);
              return Test(
                onTap: () {
                  setState(() {
                    if (selectedIndex) {
                      _selectedIndices.remove(index);
                    } else {
                      _selectedIndices.add(index);
                    }
                  });
                },
                isAdded: selectedIndex,
              );
            })
      ],
    );
  }
}
