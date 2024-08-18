import 'package:clinic_square/Core/Themes/fonts.dart';

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class HeaderBar extends StatelessWidget {
  const HeaderBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: Container(
              padding: const EdgeInsetsDirectional.all(7),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey[300]!,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(10)),
              child: const Icon(
                Icons.arrow_back_ios_new_outlined,
                size: 20,
                color: Colors.black,
              ),
            )),
        SizedBox(width: 80.w),
        Text("Doctors", style: Fonts.font24_700darkBlue),
        
      ],
    );
  }
}
