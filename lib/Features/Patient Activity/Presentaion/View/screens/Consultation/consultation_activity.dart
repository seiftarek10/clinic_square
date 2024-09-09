import 'package:clinic_square/Core/Routes/routes_path_key.dart';
import 'package:clinic_square/Core/Widgets/app_tab_bar.dart';
import 'package:clinic_square/Features/Patient%20Activity/Presentaion/View/Widgets/appoinments_list_view.dart';
import 'package:flutter/material.dart';

class ConsultationActivityView extends StatelessWidget {
  const ConsultationActivityView({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppTabBar(pageTitle: "My Appoinments", length: 2, tabs: [
      Tab(child: Text("Upcoming")),
      Tab(child: Text("Completed"))
    ], tabsView: [
      ActivityCardListView(route: Routes.appoinmentDetails),
      ActivityCardListView(route: Routes.appoinmentDetails)
    ]);
  }
}
