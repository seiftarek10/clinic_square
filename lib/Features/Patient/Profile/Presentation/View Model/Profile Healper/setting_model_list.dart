import 'package:clinic_square/Core/Helpers/controllers.dart';
import 'package:clinic_square/Features/Patient/Profile/Data/Models/setting_model.dart';
import 'package:flutter/material.dart';

class Settings {
  Settings({required this.controllers}) {
    initSettings();
  }

  late List<SettingModel> settingsItemsList;
  final TextFormControllers controllers;

  void initSettings() {
    settingsItemsList = [
      SettingModel(
          settingName: 'Email',
          settingValue: 'seift470@gmail.com',
          editMoode: false,
          icon: Icons.email,
          controller: controllers.emailController,
          expansionTileController: ExpansionTileController()),
      SettingModel(
          settingName: 'Password',
          settingValue: '**************',
          editMoode: false,
          icon: Icons.lock,
          controller: controllers.passwordController,
          expansionTileController: ExpansionTileController()),
      SettingModel(
          settingName: 'Address',
          settingValue: 'Giza , Egyp',
          editMoode: false,
          icon: Icons.location_on,
          controller: controllers.addressController,
          expansionTileController: ExpansionTileController()),
      SettingModel(
          settingName: 'Phone Number',
          settingValue: '01027870171',
          editMoode: false,
          icon: Icons.phone_android_rounded,
          controller: controllers.phoneController,
          expansionTileController: ExpansionTileController()),
    ];
  }
}
