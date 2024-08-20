import 'package:clinic_square/Core/Widgets/search_filed.dart';
import 'package:clinic_square/Features/Doctor%20Consultation/Presentaion/View/Widgets/Filter.dart';
import 'package:flutter/material.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Row(
        children: [
          Expanded(
            flex: 2,
            child: SearchField()),
            Expanded(child: Filter())
        ],
      
    );
  }
}