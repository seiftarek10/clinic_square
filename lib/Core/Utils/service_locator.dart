import 'package:clinic_square/Features/Patient/E-Lab/Presentation/View%20Models/Cubits/scans_reservation/scans_reservation_cubit.dart';
import 'package:get_it/get_it.dart';

final getit = GetIt.instance;

void serviceLocatorSetup() {
  getit.registerFactory<ScansReservationCubit>(() => ScansReservationCubit());
}
