import 'package:clinic_square/Core/Helpers/app_screen.dart';
import 'package:clinic_square/Core/Helpers/space.dart';
import 'package:clinic_square/Core/Widgets/header_bar.dart';
import 'package:clinic_square/Core/Widgets/Search/search_section.dart';
import 'package:clinic_square/Features/Patient/E-Pharmacy/Presentation/Views/Widgets/e_pharmacy_list_view.dart';
import 'package:flutter/material.dart';

class EPharmacyView extends StatelessWidget {
  const EPharmacyView({super.key});

  @override
  Widget build(BuildContext context) {
    return  AppScreen(child:Column(
      children: [
        Space.topSpace20,
        const HeaderBar(headerText: 'Pharmacy'),
        Space.verticalSpace18,
        const SearchSection(filterLabel: "City"),
        Space.verticalSpace12,
        const EPharmacyListView()
      ],
    ));
  }
}
