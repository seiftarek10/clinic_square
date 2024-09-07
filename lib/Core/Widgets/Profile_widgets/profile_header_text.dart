
import 'package:clinic_square/Core/Helpers/space.dart';
import 'package:clinic_square/Core/Themes/fonts.dart';
import 'package:flutter/material.dart';

class ProfileHeaderText extends StatelessWidget {
  const ProfileHeaderText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Space.topSpace20,
        Text("Profile",style: Fonts.font40_700mainBlue.copyWith(color: Colors.white)),
      ],
    );
  }
}
