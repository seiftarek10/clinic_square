import 'package:clinic_square/Core/Themes/fonts.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeHeaderText extends StatelessWidget {
  const HomeHeaderText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hi Seif!', style: Fonts.font20_700darkBlue),
            Text(
              'How are you ?',
              style: Fonts.font14_300DarkBlue,
            ),
          ],
        ),
        CircleAvatar(
          radius: 25,
          backgroundColor: Colors.grey[200],
          child: const Icon(FontAwesomeIcons.bell),
        )
      ],
    );
  }
}
