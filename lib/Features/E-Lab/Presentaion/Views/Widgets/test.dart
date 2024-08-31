import 'package:clinic_square/Core/Themes/colors.dart';
import 'package:clinic_square/Core/Themes/fonts.dart';
import 'package:clinic_square/Core/Widgets/animated_selection.dart';
import 'package:clinic_square/Core/Widgets/divider.dart';
import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({super.key, required this.isAdded, required this.onTap});

  final bool isAdded;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Complete Blood Picture (CBC)",
                    style: Fonts.font16_600DarkBlue),
                Text("200 EGP",
                    style: Fonts.font15_500mainBlue
                        .copyWith(color: AppColors.darkBlue)),
              ],
            ),
            AnimatedSelctionIcon(
              onTap: onTap,
              isSelected: isAdded,
            )
          ],
        ),
        const AppDivider(height: 40)
      ],
    );
  }
}
