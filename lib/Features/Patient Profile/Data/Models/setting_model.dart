import 'package:flutter/material.dart';

class SettingModel {
  final String settingName, settingValue;
  bool editMoode;
  final IconData icon;
  final TextEditingController controller;
  final String Function(String?) validator;

  SettingModel(
    {

    required this.settingName,
    required this.settingValue,
    required this.editMoode,
    required this.icon,
    required this.controller,
    required this.validator,
    }
  );
}
