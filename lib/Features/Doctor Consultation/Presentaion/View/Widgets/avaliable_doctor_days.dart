import 'package:clinic_square/Features/Doctor%20Consultation/Presentaion/View/Widgets/day_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AvaliableDoctorDaysList extends StatefulWidget {
  const AvaliableDoctorDaysList({super.key});

  @override
  State<AvaliableDoctorDaysList> createState() =>
      _AvaliableDoctorDaysListState();
}

class _AvaliableDoctorDaysListState extends State<AvaliableDoctorDaysList> {
  int _selecedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  _selecedIndex = index;
                });
              },
              child: DayContainer(
                index: index,
                selectedIndex: _selecedIndex,
              ),
            );
          }),
    );
  }
}
