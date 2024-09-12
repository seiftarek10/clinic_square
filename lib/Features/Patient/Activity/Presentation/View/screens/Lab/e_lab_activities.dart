import 'package:clinic_square/Core/Routes/routes_path_key.dart';
import 'package:clinic_square/Core/Widgets/app_tab_bar.dart';
import 'package:clinic_square/Features/Patient/Activity/Presentation/View/Widgets/appoinments_list_view.dart';
import 'package:flutter/material.dart';

class ELabActivitiesView extends StatelessWidget {
  const ELabActivitiesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppTabBar(
      length: 2,
      pageTitle: 'Lab Activity',
      tabs: [Tab(child: Text("Upcoming")), Tab(child: Text("Completed"))],
      tabsView: [
        ActivityCardListView(route: Routes.elabActivityDetails),
        ActivityCardListView(route: Routes.elabActivityDetails)
      ],
    );
  }
}
