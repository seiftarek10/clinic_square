import 'package:clinic_square/Features/Patient/E-Lab/Presentation/View%20Models/Cubits/scans_reservation/scans_reservation_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScansReservationCubit extends Cubit<ScansReservationState> {
  ScansReservationCubit() : super(ScanReservationInitial());
  int scanLength = 0;

  void inCrement() {
    scanLength++;
    emit(ModifyScansList(
      scanLength: scanLength
    ));
  }

   void deCrement() {
    scanLength--;
    emit(ModifyScansList(
      scanLength: scanLength

    ));
  }
}
