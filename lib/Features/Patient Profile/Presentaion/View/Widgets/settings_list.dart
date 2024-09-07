import 'package:clinic_square/Core/Helpers/controllers.dart';
import 'package:clinic_square/Core/Helpers/validation_form.dart';
import 'package:clinic_square/Features/Patient%20Profile/Presentaion/View%20Model/Profile%20Healper/setting_model_list.dart';
import 'package:clinic_square/Features/Patient%20Profile/Presentaion/View/Widgets/setting_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsList extends StatefulWidget {
  const SettingsList({super.key});

  @override
  State<SettingsList> createState() => _SettingsListState();
}

class _SettingsListState extends State<SettingsList> {
  final _formKey = GlobalKey<FormState>();
  late Settings settings;
  late TextFormControllers controllers;

  @override
  void initState() {
    controllers = TextFormControllers();
    settings = Settings(controllers: controllers);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    controllers.dispose();
  }

  void _editHanle(bool isEdit, int index, ExpansionTileController controller) {
    isEdit == true
        ? {
            setState(() {
              settings.settingsItemsList[index].editMoode = isEdit;
            })
          }
        : {
            if (_formKey.currentState!.validate())
              {
                setState(() {
                  settings.settingsItemsList[index].editMoode = isEdit;
                }),
              }
            else
              {controller.expand()}
          };
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350.h,
      child: Form(
        key: _formKey,
        child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),

          child: Column(
            children: [
              SettingWidget(
                  controller:
                      settings.settingsItemsList[0].expansionTileController,
                  settingModel: settings.settingsItemsList[0],
                  validator: ValidationForm.validEmail,
                  onTap: (isEdit) {
                    _editHanle(isEdit, 0,
                        settings.settingsItemsList[0].expansionTileController);
                  }),
              SettingWidget(
                  controller:
                      settings.settingsItemsList[1].expansionTileController,
                  settingModel: settings.settingsItemsList[1],
                  validator: ValidationForm.validPassword,
                  onTap: (isEdit) {
                    _editHanle(
                      isEdit,
                      1,
                      settings.settingsItemsList[1].expansionTileController,
                    );
                  }),
              SettingWidget(
                  controller:
                      settings.settingsItemsList[2].expansionTileController,
                  validator: (address) =>
                      ValidationForm.nullOrEmptyValidation(address, "Address"),
                  settingModel: settings.settingsItemsList[2],
                  onTap: (isEdit) {
                    _editHanle(
                      isEdit,
                      2,
                      settings.settingsItemsList[2].expansionTileController,
                    );
                  }),
              SettingWidget(
                  controller:
                      settings.settingsItemsList[3].expansionTileController,
                  settingModel: settings.settingsItemsList[3],
                  validator: ValidationForm.validPhoneNubmer,
                  onTap: (isEdit) {
                    _editHanle(isEdit, 3,
                        settings.settingsItemsList[3].expansionTileController);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
