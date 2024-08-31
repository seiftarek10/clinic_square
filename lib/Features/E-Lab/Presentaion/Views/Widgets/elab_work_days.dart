import 'package:clinic_square/Core/Themes/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ELabWorkDays extends StatelessWidget {
  const ELabWorkDays({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.red[200],
            child: const Icon(Icons.work_history,color: Colors.red,),
          ),
        ),
        SizedBox(width: 6.w),
        Expanded(flex: 7,
          child: Text("Monday-Friday\n8.00 AM To 7.00 PM",
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          style: Fonts.font16_600DarkBlue),
        )
      ],
    );
  }
}