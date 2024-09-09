import 'package:clinic_square/Core/Routes/routes_path_key.dart';
import 'package:clinic_square/Core/Widgets/app_tab_bar.dart';
import 'package:clinic_square/Features/Patient%20Activity/Presentaion/View/Widgets/appoinments_list_view.dart';
import 'package:flutter/material.dart';

class LabActivitiesView extends StatelessWidget {
  const LabActivitiesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppTabBar(
      length: 2,
      pageTitle: 'Lab Activity',
      tabs: [Tab(child: Text("Upcoming")), Tab(child: Text("Completed"))],
      tabsView: [
        ActivityCardListView(route: Routes.labActivityDetails),
        ActivityCardListView(route: Routes.labActivityDetails)
      ],
    );
  }
}
