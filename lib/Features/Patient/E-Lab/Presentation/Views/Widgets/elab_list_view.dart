import 'package:clinic_square/Features/Patient/E-Lab/Presentation/View%20Models/Cubits/scans_reservation/scans_reservation_cubit.dart';
import 'package:clinic_square/Features/Patient/E-Lab/Presentation/Views/Widgets/elab_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
            padding: EdgeInsets.only(bottom: 12.h), child: ElabCard(
              scansReservationCubit: BlocProvider.of<ScansReservationCubit>(context),
            ));
      },
    );
  }
}
