import 'package:clinic_square/Core/Helpers/validation_form.dart';
import 'package:clinic_square/Core/Themes/colors.dart';
import 'package:clinic_square/Features/Patient%20Profile/Presentaion/View%20Model/Profile%20Healper/setting_model_list.dart';
import 'package:clinic_square/Features/Patient%20Profile/Presentaion/View/Widgets/setting_widget.dart';
import 'package:flutter/material.dart';

class SettingContainer extends StatefulWidget {
  const SettingContainer({super.key});

  @override
  State<SettingContainer> createState() => _SettingContainerState();
}

class _SettingContainerState extends State<SettingContainer> {
  final _formKey = GlobalKey<FormState>();

  void _editHanle(bool isEdit, int index, ExpansionTileController controller) {
    isEdit == true
        ? {
            setState(() {
              settings[index].editMoode = isEdit;
            })
          }
        : {
            if (_formKey.currentState!.validate())
              {
                setState(() {
                  settings[index].editMoode = isEdit;
                }),
              }
            else
              {controller.expand()}
          };
  }

  @override
  void dispose() {
    super.dispose();
    settings[0].controller.dispose();
    settings[1].controller.dispose();
    settings[2].controller.dispose();
    settings[3].controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: AppColors.appBackgroundGrey,
          borderRadius: BorderRadius.circular(14)),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            SettingWidget(
                controller: settings[0].expansionTileController,
                settingModel: settings[0],
                validator: ValidationForm.validEmail,
                onTap: (isEdit) {
                  _editHanle(isEdit, 0, settings[0].expansionTileController);
                }),
            SettingWidget(
                controller: settings[1].expansionTileController,
                settingModel: settings[1],
                validator: ValidationForm.validPassword,
                onTap: (isEdit) {
                  _editHanle(
                    isEdit,
                    1,
                    settings[1].expansionTileController,
                  );
                }),
            SettingWidget(
                controller: settings[2].expansionTileController,
                validator: (address) =>
                    ValidationForm.nullOrEmptyValidation(address, "Address"),
                settingModel: settings[2],
                onTap: (isEdit) {
                  _editHanle(
                    isEdit,
                    2,
                    settings[2].expansionTileController,
                  );
                }),
            SettingWidget(
                controller: settings[3].expansionTileController,
                settingModel: settings[3],
                validator: ValidationForm.validPhoneNubmer,
                onTap: (isEdit) {
                  _editHanle(isEdit, 3, settings[3].expansionTileController);
                }),
          ],
        ),
      ),
    );
  }
}
