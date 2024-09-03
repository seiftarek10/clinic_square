import 'package:clinic_square/Core/Helpers/controllers.dart';
import 'package:clinic_square/Features/Patient%20Profile/Data/Models/setting_model.dart';
import 'package:flutter/material.dart';

TextFormControllers _controllers = TextFormControllers();

List<SettingModel> settings = [
  SettingModel(
      settingName: 'Email',
      settingValue: 'seift470@gmail.com',
      editMoode: false,
      icon: Icons.email,
      controller: _controllers.emailController,
      expansionTileController: ExpansionTileController()),
  SettingModel(
      settingName: 'Password',
      settingValue: '**************',
      editMoode: false,
      icon: Icons.lock,
      controller: _controllers.passwordController,
      expansionTileController: ExpansionTileController()),
  SettingModel(
      settingName: 'Address',
      settingValue: 'Giza , Egyp',
      editMoode: false,
      icon: Icons.location_on,
      controller: _controllers.addressController,
      expansionTileController: ExpansionTileController()),
  SettingModel(
      settingName: 'Phone Number',
      settingValue: '01027870171',
      editMoode: false,
      icon: Icons.phone_android_rounded,
      controller: _controllers.phoneController,
      expansionTileController: ExpansionTileController()),
];
