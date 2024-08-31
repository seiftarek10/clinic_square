import 'package:clinic_square/Features/E-Pharmacy/Presentaion/Views/Widgets/e_pharmacy_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EPharmacyListView extends StatelessWidget {
  const EPharmacyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding:  EdgeInsets.only(bottom: 12.h),
          child: const EPharmacyCard(),
        );
      },
    );
  }
}
