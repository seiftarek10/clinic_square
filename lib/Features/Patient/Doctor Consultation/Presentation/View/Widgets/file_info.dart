
import 'package:clinic_square/Core/Themes/fonts.dart';
import 'package:clinic_square/Core/utils/assets.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class FileInfo extends StatelessWidget {
  const FileInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          SvgPicture.asset(
            Assets.fileIcon,
            height: 40.h,
          ),
          SizedBox(width: 6.w),
          Text("File Name", style: Fonts.font16_600DarkBlue),
          const Spacer(),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                EvaIcons.closeCircleOutline,
                color: Colors.red,
                size: 28,
              ))
        ],
      );
  }
}
