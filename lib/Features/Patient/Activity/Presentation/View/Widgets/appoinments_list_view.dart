import 'package:clinic_square/Core/utils/assets.dart';
import 'package:clinic_square/Features/Patient/Activity/Presentation/View/Widgets/activity_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ActivityCardListView extends StatelessWidget {
  const ActivityCardListView({super.key, required this.route, this.isRouting});

  final String route;
  final bool? isRouting;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h),
              child: ActivityCard(
                isRouting: isRouting==null?null:true,
                title: 'Dr Seif Tariq Maher',
                subTitle: 'Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla',
                date: "2030 5 Octoper",
                cardImage: Assets.doctorImageIcon,
                route: route,
              ));
        });
  }
}
