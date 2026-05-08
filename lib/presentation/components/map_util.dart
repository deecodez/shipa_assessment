import 'dart:math';
import 'package:google_maps_flutter/google_maps_flutter.dart';

double distanceMeters(LatLng a, LatLng b) {
  const R = 6371000.0;
  final lat1 = a.latitude * pi / 180;
  final lat2 = b.latitude * pi / 180;
  final dLat = (b.latitude - a.latitude) * pi / 180;
  final dLng = (b.longitude - a.longitude) * pi / 180;
  final x =
      sin(dLat / 2) * sin(dLat / 2) +
      cos(lat1) * cos(lat2) * sin(dLng / 2) * sin(dLng / 2);
  return R * 2 * atan2(sqrt(x), sqrt(1 - x));
}

double remainingMeters(List<LatLng> points, int fromIndex) {
  double total = 0;
  for (int i = fromIndex; i < points.length - 1; i++) {
    total += distanceMeters(points[i], points[i + 1]);
  }
  return total;
}

int nearestPolylineIndex(LatLng pos, List<LatLng> points) {
  int nearest = 0;
  double minDist = double.infinity;
  for (int i = 0; i < points.length; i++) {
    final d = distanceMeters(pos, points[i]);
    if (d < minDist) {
      minDist = d;
      nearest = i;
    }
  }
  return nearest;
}

LatLng lerpLatLng(LatLng a, LatLng b, double t) => LatLng(
  a.latitude + (b.latitude - a.latitude) * t,
  a.longitude + (b.longitude - a.longitude) * t,
);

String formatEta(int seconds) {
  if (seconds <= 0) return '0 minute';
  final minutes = (seconds / 60).ceil();
  return '$minutes minutes';
}
