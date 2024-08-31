import 'package:clinic_square/Core/Themes/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ELabLocation extends StatelessWidget {
  const ELabLocation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.green[200],
            child: const Icon(Icons.location_on,color: Colors.green,),
          ),
        ),
        SizedBox(width: 6.w),
        Expanded(flex: 7,
          child: Text("Maadi",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: Fonts.font16_600DarkBlue),
        )
      ],
    );
  }
}