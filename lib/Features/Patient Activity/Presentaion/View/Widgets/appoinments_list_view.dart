import 'package:clinic_square/Features/Patient%20Activity/Presentaion/View/Widgets/activity_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppoinmentsListView extends StatelessWidget {
  const AppoinmentsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context,index){
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 8.h),
          child: const ActivityCard());
      });
  }
}