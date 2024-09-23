import 'package:clinic_square/Core/Widgets/app_tab_bar.dart';
import 'package:clinic_square/Features/Patient/E-Lab/Presentation/View%20Models/Cubits/scans_reservation/scans_reservation_cubit.dart';
import 'package:clinic_square/Features/Patient/E-Lab/Presentation/Views/Widgets/booking_list.dart';
import 'package:clinic_square/Features/Patient/E-Lab/Presentation/Views/Widgets/elabs_tab.dart';
import 'package:clinic_square/Features/Patient/E-Lab/Presentation/Views/Widgets/scans_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ElabAndScansView extends StatefulWidget {
  const ElabAndScansView({super.key});

  @override
  State<ElabAndScansView> createState() => _ElabAndScansViewState();
}

class _ElabAndScansViewState extends State<ElabAndScansView> {
  @override
  void dispose()async {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppTabBar(
      length: 2,
      pageTitle: 'Labs & Scans',
      tabs: const [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Text("Labs"),
        ),
        Text("Scans")
      ],
      tabsView: const [
        ElabsTab(),
        Stack(
          children: [
            ScansTab(),
            Positioned(
              bottom: 7,
              right: 0,
              left: 0,
              child: BookingListWidget(),
            ),
          ],
        )
      ],
    );
  }
}
