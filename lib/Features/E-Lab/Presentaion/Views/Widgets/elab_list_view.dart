
import 'package:clinic_square/Features/E-Lab/Presentaion/Views/Widgets/elab_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ElabListView extends StatelessWidget {
  const ElabListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.only(bottom: 12.h),
          child: const ElabCard(
            
          ));
      },
    );
  }
}
