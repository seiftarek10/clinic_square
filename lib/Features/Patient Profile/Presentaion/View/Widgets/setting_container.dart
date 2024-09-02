import 'package:clinic_square/Core/Themes/colors.dart';
import 'package:clinic_square/Features/Patient%20Profile/Presentaion/View%20Model/Models%20Collection/setting_model_list.dart';
import 'package:clinic_square/Features/Patient%20Profile/Presentaion/View/Widgets/setting_widget.dart';
import 'package:flutter/material.dart';

class SettingContainer extends StatefulWidget {
  const SettingContainer({super.key});

  @override
  State<SettingContainer> createState() => _SettingContainerState();
}

class _SettingContainerState extends State<SettingContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: AppColors.appBackgroundGrey,
          borderRadius: BorderRadius.circular(14)),
      child: Column(
        children: [
          SettingWidget(
            settingModel: settings[0],
            onTap: (isEdit) {
              setState(() {
                settings[0].editMoode = isEdit;
              });
            },
          ),
          SettingWidget(settingModel: settings[1],onTap: (isEdit) {
              setState(() {
                settings[1].editMoode = isEdit;
              });
            },),
          SettingWidget(settingModel: settings[2],
          onTap: (isEdit) {
              setState(() {
                settings[2].editMoode = isEdit;
              });
            },),
        ],
      ),
    );
  }
}
