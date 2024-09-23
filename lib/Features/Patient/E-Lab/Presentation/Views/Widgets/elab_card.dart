import 'package:clinic_square/Core/Themes/fonts.dart';
import 'package:clinic_square/Core/utils/assets.dart';
import 'package:clinic_square/Features/Patient/E-Lab/Presentation/View%20Models/Cubits/scans_reservation/scans_reservation_cubit.dart';
import 'package:clinic_square/Features/Patient/E-Lab/Presentation/Views/elab_book_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ElabCard extends StatelessWidget {
  const ElabCard({super.key, required this.scansReservationCubit});

  final ScansReservationCubit scansReservationCubit;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110.h,
      width: 343.w,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 4,
            child: SizedBox(
              height: double.infinity,
              child: AspectRatio(
                  aspectRatio: 1,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(Assets.doctorImageIcon,
                          fit: BoxFit.cover))),
            ),
          ),
          SizedBox(width: 16.w),
          Expanded(
              flex: 7,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 6.h),
                  Text("Dr.Seif Tariq Maher",
                      style: Fonts.font16_600DarkBlue
                          .copyWith(overflow: TextOverflow.ellipsis)),
                  SizedBox(height: 6.h),
                  Text('General | RSUD Gatot Subroto',
                      maxLines: 2,
                      style: Fonts.font14_300DarkBlue
                          .copyWith(overflow: TextOverflow.ellipsis)),
                  // const CardButton(
                  //   routePage: Routes.eLabBookView,
                  //   buttonTitle: 'Book')
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BlocProvider.value(
                                    value: scansReservationCubit,
                                    child: const ElabBookView(),
                                  )));
                    },
                    child: Text('View'),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
