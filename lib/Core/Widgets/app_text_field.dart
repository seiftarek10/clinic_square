import 'package:clinic_square/Core/Themes/colors.dart';
import 'package:clinic_square/Core/Themes/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextField extends StatefulWidget {
  const AppTextField(
      {super.key,
      required this.hintText,
      required this.icon,
      this.suffixIcon,
      required this.controller,
      required this.validator,
      this.onPressed, this.isSecureText});

  final String hintText;
  final IconData icon;
  final IconData? suffixIcon;
  final TextEditingController controller;
  final String Function(String?) validator;
  final void Function()? onPressed;
  final bool? isSecureText;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  late FocusNode _focusNode;
  bool isFocused = false;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      {
        setState(() {
          isFocused = _focusNode.hasFocus;
        });
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _focusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: widget.controller,
          validator: widget.validator,
          focusNode: _focusNode,
          obscureText: widget.isSecureText??false,
          decoration: InputDecoration(
              hintText: widget.hintText,
              hintStyle: Fonts.font18_250Lightgrey,
              prefixIcon: Icon(
                widget.icon,
                color: isFocused ? AppColors.mainBlue : AppColors.lightGrey,
              ),
              suffixIcon: IconButton(
                onPressed: widget.onPressed,
                icon: Icon(widget.suffixIcon,
                    color: isFocused ? AppColors.mainBlue : AppColors.lightGrey),
              ),
              enabledBorder: borderStyle(color: AppColors.lightGrey, width: 0.7),
              focusedBorder: borderStyle(width: 1.5, color: AppColors.mainBlue),
              errorBorder: borderStyle(width: 1.5, color: Colors.red),
              focusedErrorBorder: borderStyle(width: 1.5, color: Colors.red)
              ),
        ),
          SizedBox(height: 10.h),

      ],
    );
  }

  OutlineInputBorder borderStyle(
      {required double width, required Color color}) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(width: width, color: color));
  }
}
