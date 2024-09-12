import 'package:clinic_square/Core/Helpers/controllers.dart';
import 'package:clinic_square/Core/Helpers/validation_form.dart';
import 'package:clinic_square/Features/Patient/Profile/Data/Models/setting_model.dart';
import 'package:clinic_square/Features/Patient/Profile/Presentation/View%20Model/Profile%20Healper/setting_model_list.dart';
import 'package:clinic_square/Features/Patient/Profile/Presentation/View/Widgets/setting_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsList extends StatefulWidget {
  const SettingsList({super.key});

  @override
  State<SettingsList> createState() => _SettingsListState();
}

class _SettingsListState extends State<SettingsList> {
  final _formKeys = List.generate(4, (_) => GlobalKey<FormState>());
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

  void _editHandle(bool isEdit, int index, ExpansionTileController controller) {
    if (isEdit) {
      setState(() {
        settings.settingsItemsList[index].editMoode = isEdit;
      });
    } else {
      if (_formKeys[index].currentState!.validate()) {
        setState(() {
          settings.settingsItemsList[index].editMoode = isEdit;
        });
      } else {
        controller.expand();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350.h,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: settings.settingsItemsList.length,
        itemBuilder: (context, index) {
          final SettingModel setting = settings.settingsItemsList[index];
          return SettingWidget(
            controller: setting.expansionTileController,
            settingModel: setting,
            validator: index == 0
                ? ValidationForm.validEmail
                : index == 1
                    ? ValidationForm.validPassword
                    : index == 2
                        ? (address) => ValidationForm.nullOrEmptyValidation(
                            address, "Address")
                        : ValidationForm.validPhoneNubmer,
            formKey: _formKeys[index],
            onTap: (isEdit) {
              _editHandle(isEdit, index, setting.expansionTileController);
            },
          );
        },
      ),
    );
  }
}
