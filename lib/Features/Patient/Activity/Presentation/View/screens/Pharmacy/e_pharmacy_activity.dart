import 'package:clinic_square/Core/Widgets/app_tab_bar.dart';
import 'package:clinic_square/Features/Patient/Activity/Presentation/View/Widgets/appoinments_list_view.dart';
import 'package:flutter/material.dart';

class EPharmacyActivityView extends StatelessWidget {
  const EPharmacyActivityView({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppTabBar(
      length: 2,
      pageTitle: 'Pharmacy Activity',
      tabs: [Tab(child: Text("Upcoming")), Tab(child: Text("Completed"))],
      tabsView: [
        ActivityCardListView(
          isRouting: true,
          route: ""),
        ActivityCardListView(
          isRouting: true,
          
          route: "")
      ],
    );
  }
}
