import 'dart:async';

import 'package:shipa_tracking/lib.dart';

final riderLocationProvider = StreamProvider<RiderLocation>((ref) async* {
  final locations = [
    RiderLocation(lat: 6.5244, lng: 3.3792),
    RiderLocation(lat: 6.5244, lng: 3.3800),
    RiderLocation(lat: 6.5252, lng: 3.3800),
    RiderLocation(lat: 6.5252, lng: 3.3810),
    RiderLocation(lat: 6.5260, lng: 3.3810),
    RiderLocation(lat: 6.5260, lng: 3.3820),
    RiderLocation(lat: 6.5268, lng: 3.3820),
    RiderLocation(lat: 6.5268, lng: 3.3830),
    RiderLocation(lat: 6.5275, lng: 3.3830),
    RiderLocation(lat: 6.5275, lng: 3.3840),
    RiderLocation(lat: 6.5285, lng: 3.3840),
    RiderLocation(lat: 6.5285, lng: 3.3850),
  ];

  for (final location in locations) {
    await Future.delayed(const Duration(seconds: 5));
    yield location;
  }
});
