
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:shipa_tracking/lib.dart';


// Assumed average rider speed: 30 km/h
const double _riderSpeedMs = 8.33;

const List<LatLng> riderPolylineCoordinates = [
  LatLng(6.5244, 3.3792),
  LatLng(6.5244, 3.3800),
  LatLng(6.5252, 3.3800),
  LatLng(6.5252, 3.3810),
  LatLng(6.5260, 3.3810),
  LatLng(6.5260, 3.3820),
  LatLng(6.5268, 3.3820),
  LatLng(6.5268, 3.3830),
  LatLng(6.5275, 3.3830),
  LatLng(6.5275, 3.3840),
  LatLng(6.5285, 3.3840),
  LatLng(6.5285, 3.3850), 
];


class EtaState {
  final int seconds;
  final bool arrived;

  const EtaState({this.seconds = 0, this.arrived = false});

  String get formatted => arrived ? 'Arrived!' : formatEta(seconds);
}


class EtaNotifier extends Notifier<EtaState> {
  @override
  EtaState build() => const EtaState();

  void updateFromLocation(LatLng riderPosition) {
    final index = nearestPolylineIndex(
      riderPosition,
      riderPolylineCoordinates,
    );

    final meters = remainingMeters(riderPolylineCoordinates, index);
    final seconds = (meters / _riderSpeedMs).round();
    final arrived = meters < 15;

    state = EtaState(seconds: seconds, arrived: arrived);
  }
}

final etaProvider = NotifierProvider<EtaNotifier, EtaState>(
  EtaNotifier.new,
);