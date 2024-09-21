abstract class ScansReservationState {}

class ScanReservationInitial extends ScansReservationState {}

class ModifyScansList extends ScansReservationState {
  final int scanLength;

  ModifyScansList({required this.scanLength});
}
