import 'package:clinic_square/Core/Themes/colors.dart';
import 'package:clinic_square/Core/Themes/fonts.dart';
import 'package:flutter/material.dart';

class AttachFiled extends StatelessWidget {
  const AttachFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          onPressed: (){},
          child: Text(
           "Add Your Licence",
         style:Fonts.font24_600mainBlue),
          ),
         Icon(Icons.upload,color: AppColors.mainBlue,size: 40,)
      ],
    );
  }
}