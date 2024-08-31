import 'package:clinic_square/Core/Helpers/space.dart';
import 'package:clinic_square/Core/Themes/fonts.dart';
import 'package:clinic_square/Features/E-Pharmacy/Presentaion/Views/Widgets/medication_card.dart';
import 'package:flutter/material.dart';

class AvailableMedicationsSection extends StatefulWidget {
  const AvailableMedicationsSection({super.key});

  @override
  State<AvailableMedicationsSection> createState() =>
      _AvailableMedicationsSectionState();
}

class _AvailableMedicationsSectionState
    extends State<AvailableMedicationsSection> {
  final Set<int> _selectedIndices = {};
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("Available Medications", style: Fonts.font16_600DarkBlue),
          Text("Total : 0", style: Fonts.font16_600DarkBlue)
        ]),
        Space.verticalSpace18,
        ListView.builder(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              bool selectedIndex = _selectedIndices.contains(index);
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom:  8.0),
                    child: MedicationCard(
                        isSelected: selectedIndex,
                        onTap: () {
                          setState(() {
                            if (selectedIndex) {
                              _selectedIndices.remove(index);
                            } else {
                              _selectedIndices.add(index);
                            }
                          });
                        }),
                  ),
                  // const AppDivider(height: 10),
                ],
              );
            })
      ],
    );
  }
}
