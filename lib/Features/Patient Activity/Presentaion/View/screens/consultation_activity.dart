import 'package:clinic_square/Core/Widgets/app_tab_bar.dart';
import 'package:clinic_square/Features/Patient%20Activity/Presentaion/View/Widgets/appoinments_list_view.dart';
import 'package:flutter/material.dart';

class ConsultationActivity extends StatelessWidget {
  const ConsultationActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppTabBar(
      pageTitle: "My Appoinments",
      length: 2,
      tabs: [Tab(child: Text("Upcoming")), Tab(child: Text("Completed"))],
      tabsView: [
        AppoinmentsListView(),
        AppoinmentsListView(),
        
      ],
    );
  }
}
