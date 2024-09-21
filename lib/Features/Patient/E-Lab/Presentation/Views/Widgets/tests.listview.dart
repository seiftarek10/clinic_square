import 'package:clinic_square/Features/Patient/E-Lab/Presentation/View%20Models/Cubits/scans_reservation/scans_reservation_cubit.dart';
import 'package:clinic_square/Features/Patient/E-Lab/Presentation/Views/Widgets/test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TestsListView extends StatefulWidget {
  const TestsListView({super.key});

  @override
  State<TestsListView> createState() => _TestsListViewState();
}

class _TestsListViewState extends State<TestsListView> {
  final Set<int> _selectedIndices = {};

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemCount: 9,
        itemBuilder: (BuildContext context, int index) {
          bool selectedIndex = _selectedIndices.contains(index);
          return Test(
            onTap: () {
              setState(() {
                if (selectedIndex) {
                  _selectedIndices.remove(index);
                  BlocProvider.of<ScansReservationCubit>(context).deCrement();
                } else {
                  _selectedIndices.add(index);
                  BlocProvider.of<ScansReservationCubit>(context).inCrement();

                }
              });
            },
            isAdded: selectedIndex,
          );
        });
  }
}
