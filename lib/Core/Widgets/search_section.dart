import 'package:clinic_square/Core/Widgets/search_filed.dart';
import 'package:clinic_square/Core/Widgets/filter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key, required this.filterLabel});
  final String filterLabel;

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        const Expanded(flex: 2, child: SearchField()),
        SizedBox(width: 4.w),
        Expanded(
            child: Filter(
          label: filterLabel,
        ))
      ],
    );
  }
}
