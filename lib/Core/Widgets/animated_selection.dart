import 'package:clinic_square/Core/Themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AnimatedSelctionIcon extends StatefulWidget {
  const AnimatedSelctionIcon({super.key});

  @override
  State<AnimatedSelctionIcon> createState() => _AnimatedSelctionIconState();
}

class _AnimatedSelctionIconState extends State<AnimatedSelctionIcon> {
    bool _isAdded = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isAdded = !_isAdded;
        });
      },
      child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 200),
          transitionBuilder: (Widget child, Animation<double> animation) {
            return FadeTransition(opacity: animation, child: child);
          },
          child: _isAdded
              ? Container(
                  key: const ValueKey("done"),
                  width: 32.w,
                  height: 32.h,
                  decoration: BoxDecoration(
                      color: Colors.blue[900],
                      borderRadius: BorderRadius.circular(10)),
                  child: const Icon(Icons.done,
                      key: ValueKey("doneIcon"), size: 18, color: Colors.white),
                )
              : Container(
                  key: const ValueKey("add"),
                  width: 32.w,
                  height: 32.h,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 201, 229, 252),
                      borderRadius: BorderRadius.circular(10)),
                  child: Icon(Icons.add,
                      size: 25,
                      key: const ValueKey("Add Icons"),
                      color: AppColors.mainBlue),
                )),
    );
  }
}
