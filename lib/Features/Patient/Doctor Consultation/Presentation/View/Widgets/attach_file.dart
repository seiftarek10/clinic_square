import 'package:clinic_square/Core/Themes/fonts.dart';
import 'package:clinic_square/Core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class AttachFile extends StatelessWidget {
  const AttachFile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          SvgPicture.asset(
            Assets.attachIcon,
            height: 50.h,
          ),
          TextButton(
              onPressed: () {},
              child: Text("Add Your Lab Tests",
                  style: Fonts.font20_700darkBlue)),
        ],
      );
  }
}
