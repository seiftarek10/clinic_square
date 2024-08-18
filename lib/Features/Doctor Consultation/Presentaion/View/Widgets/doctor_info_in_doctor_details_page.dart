import 'package:clinic_square/Core/Helpers/space.dart';
import 'package:clinic_square/Core/Themes/fonts.dart';
import 'package:flutter/material.dart';

class DoctorInfoConsultation extends StatelessWidget {
  const DoctorInfoConsultation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Location", style: Fonts.font20_700darkBlue),
        Space.bottomSpace,
        Text("Maadi, Egypt", style: Fonts.font16_400DarkBlue),
        Space.verticalSpace18,
        Text("Working Time", style: Fonts.font20_700darkBlue),
        Space.bottomSpace,
        Text("Monday - Friday, 8.00 AM - 4 PM",
            style: Fonts.font16_400DarkBlue),
        Space.verticalSpace18,
        Text("Phone Number",style: Fonts.font20_700darkBlue),
        Space.bottomSpace,
        Text("01027870171", style: Fonts.font16_400DarkBlue),
          Space.verticalSpace18,
        Text("Session Price",style: Fonts.font20_700darkBlue),
        Space.bottomSpace,
        Text("200 Egp", style: Fonts.font16_400DarkBlue),

        
      ],
    );
  }
}
