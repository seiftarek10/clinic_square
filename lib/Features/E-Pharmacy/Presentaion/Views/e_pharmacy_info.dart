import 'package:clinic_square/Core/Helpers/app_screen.dart';
import 'package:clinic_square/Core/Helpers/space.dart';
import 'package:clinic_square/Core/Widgets/app_main_button.dart';
import 'package:clinic_square/Core/Widgets/divider.dart';
import 'package:clinic_square/Core/Widgets/header_bar.dart';
import 'package:clinic_square/Core/Widgets/location_widget.dart';
import 'package:clinic_square/Core/Widgets/search_filed.dart';
import 'package:clinic_square/Features/E-Pharmacy/Presentaion/Views/Widgets/available_medications.dart';
import 'package:flutter/material.dart';

class EPharmacyInfoView extends StatelessWidget {
  const EPharmacyInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScreen(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Space.topSpace20,
          const HeaderBar(headerText: 'Pharmacy Name'),
          Space.verticalSpace18,
          const LocationWidget(location: 'Giza'),
          const AppDivider(height: 35),
          const SearchField(),
          Space.verticalSpace18,
          const AvailableMedicationsSection(),
          Space.verticalSpace18,
          AppButton(onPressed: (){}, text: "Pay"),
          Space.verticalSpace12
        ],
      ),
    );
  }
}
