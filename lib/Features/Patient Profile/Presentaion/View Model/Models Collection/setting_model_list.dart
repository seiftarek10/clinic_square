import 'package:clinic_square/Core/Helpers/controllers.dart';
import 'package:clinic_square/Core/Helpers/validation_form.dart';
import 'package:clinic_square/Features/Patient%20Profile/Data/Models/setting_model.dart';
import 'package:flutter/material.dart';

Controllers _controllers = Controllers();

List<SettingModel> settings = [
  SettingModel(
      settingName: 'Email',
      settingValue: 'seift470@gmail.com',
      editMoode: false,
      
      
      icon: Icons.email,
      controller: _controllers.emailController,
      validator: (email) {
        return ValidationForm.validEmail(email);
      }),
  SettingModel(
      settingName: 'Password',
      settingValue: '**************',
      editMoode: false,
      
      icon: Icons.lock,
      controller: _controllers.passwordController,
      validator: (password) {
        return ValidationForm.validPassword(password);
      }),
  SettingModel(
      settingName: 'Address',
      settingValue: 'Giza , Egyp',
      editMoode: false,
      
      icon: Icons.location_on,
      controller: _controllers.addressController,
      validator: (address) {
        return ValidationForm.validEmail(address);
      })
];
