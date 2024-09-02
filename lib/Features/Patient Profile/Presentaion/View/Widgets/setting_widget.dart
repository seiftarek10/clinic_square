import 'package:clinic_square/Core/Themes/colors.dart';
import 'package:clinic_square/Core/Themes/fonts.dart';
import 'package:clinic_square/Core/Widgets/app_text_field.dart';
import 'package:clinic_square/Features/Patient%20Profile/Data/Models/setting_model.dart';
import 'package:flutter/material.dart';

class SettingWidget extends StatelessWidget {
  const SettingWidget({
    super.key, required this.settingModel, required this.onTap,
   
  });

  final SettingModel settingModel;
  final void Function(bool) onTap;


  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      childrenPadding: EdgeInsets.zero,
      title: Text(settingModel.settingName, style: Fonts.font18_600DarkBlue),
      subtitle: settingModel.editMoode
          ? const SizedBox.shrink()
          : Text(settingModel.settingValue, style: Fonts.font14_400DarkBlue),
      collapsedShape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      iconColor: AppColors.mainBlue,
      trailing: settingModel.editMoode ? const Icon(Icons.done) : const Icon(Icons.edit),
      onExpansionChanged: onTap,
      children: [
        AppTextField(
            hintText: settingModel.settingValue,
            icon: settingModel.icon,
            controller: settingModel.controller,
            validator: settingModel.validator)
      ],
    );
  }
}
