import 'package:clinic_square/Core/Themes/colors.dart';
import 'package:clinic_square/Core/Themes/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ActivityContainerCategory extends StatefulWidget {
  const ActivityContainerCategory(
      {super.key,
      required this.cardPhoto,
      required this.cardTitle,
      this.needPhotoPadding,
      required this.routePage});

  final String cardPhoto, cardTitle, routePage;
  final bool? needPhotoPadding;

  @override
  State<ActivityContainerCategory> createState() =>
      _ActivityContainerCategoryState();
}

class _ActivityContainerCategoryState extends State<ActivityContainerCategory> {
  Color _color = Colors.white;

  void _onTapDown(TapDownDetails details) {
    setState(() {
      _color = Colors.blue[100]!; // Change to red when tapped
    });
  }

  void _onTapUp(TapUpDetails details) {
    setState(() {
      _color = Colors.white; // Revert back to blue after release
    });
  }

  void _onCancel() {
    setState(() {
      _color = Colors.white; // Revert back to blue after release
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      onLongPress: () {
        setState(() {
          _color = Colors.blue[100]!;
        });
      },
      //  onLongPressCancel: _onCancel,
      onTapCancel: _onCancel,
      onTap: () {
        GoRouter.of(context).push(widget.routePage);
      },
      child: Container(
          height: 130.h,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 10,
                color: Colors.grey[800]!,
                spreadRadius: 0.7,
              )
            ],
            gradient: LinearGradient(
              colors: [AppColors.mainBlue, _color],
              transform: const GradientRotation(3),
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Expanded(
                  child: Padding(
                padding: widget.needPhotoPadding == true
                    ? const EdgeInsets.only(left: 6, bottom: 1)
                    : EdgeInsets.zero,
                child: Image.asset(widget.cardPhoto, fit: BoxFit.cover),
              )),
              Expanded(
                  flex: 2,
                  child: Padding(
                      padding: EdgeInsets.only(left: 16.w),
                      child: Text(
                        widget.cardTitle,
                        style: Fonts.font24_700mainBlue
                            .copyWith(color: Colors.white),
                      )))
            ],
          )),
    );
  }
}
