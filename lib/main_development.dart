import 'package:clinic_square/Core/Utils/bloc_observer.dart';
import 'package:clinic_square/Core/Utils/service_locator.dart';
import 'package:clinic_square/clinic_square.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  serviceLocatorSetup();
  runApp(const ClinicSquare());
  Bloc.observer = AppBlocObserver();
}
