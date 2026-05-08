import 'dart:async';

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:shipa_tracking/lib.dart';

class MapWidget extends ConsumerStatefulWidget {
  const MapWidget({super.key});

  @override
  ConsumerState<MapWidget> createState() => _MapWidgetState();
}

class _MapWidgetState extends ConsumerState<MapWidget>
    with TickerProviderStateMixin {
  GoogleMapController? _mapController;
  Marker? _riderMarker;
  BitmapDescriptor? _driverIcon;
  BitmapDescriptor? _destinationIcon;
  AnimationController? _animController;
  Animation<double>? _anim;
  ProviderSubscription? _locationSub;

  // Tracks the position the marker is currently animating FROM
  // Updated only after each animation completes
  LatLng _animationFromPosition = riderPolylineCoordinates.first;

  final LatLng _destination = riderPolylineCoordinates.last;
  Set<Polyline> _polylines = {};

  @override
  void initState() {
    super.initState();
    _loadMarkers();
    _buildPolylines();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _locationSub?.close();
    _locationSub = ref.listenManual(riderLocationProvider, (previous, next) {
      if (next is AsyncData<RiderLocation>) {
        _onNewLocation(next.value);
      }
    });
  }

  @override
  void dispose() {
    _locationSub?.close();
    _animController?.dispose();
    super.dispose();
  }

  Future<void> _loadMarkers() async {
    _driverIcon = await BitmapDescriptor.asset(
      const ImageConfiguration(size: Size(50, 50), devicePixelRatio: 2.0),
      AppImages.bikeMarker,
    );
    _destinationIcon = await BitmapDescriptor.asset(
      const ImageConfiguration(size: Size(35, 35), devicePixelRatio: 2.0),
      AppImages.destinationMarker,
    );
    _placeRiderAt(_animationFromPosition);
    setState(() {});
  }

  void _placeRiderAt(LatLng pos) {
    _riderMarker = Marker(
      markerId: const MarkerId('rider'),
      position: pos,
      icon: _driverIcon ?? BitmapDescriptor.defaultMarker,
      anchor: const Offset(0.5, 0.5),
      flat: true,
      zIndexInt: 2,
    );
  }

  void _buildPolylines() {
    _polylines = {
      Polyline(
        polylineId: const PolylineId('shadow'),
        points: riderPolylineCoordinates,
        color: AppColors.blueColor.withValues(alpha: 0.25),
        width: 18,
        startCap: Cap.roundCap,
        endCap: Cap.roundCap,
        jointType: JointType.mitered,
        zIndex: 1,
      ),
      Polyline(
        polylineId: const PolylineId('main'),
        points: riderPolylineCoordinates,
        color: AppColors.primaryColor.withValues(alpha: 0.9),
        width: 10,
        startCap: Cap.roundCap,
        endCap: Cap.roundCap,
        jointType: JointType.mitered,
        zIndex: 2,
      ),
    };
  }

  void _animateMarker(LatLng from, LatLng to) {
    final meters = distanceMeters(from, to);
    if (meters < 1) {
      setState(() => _placeRiderAt(to));
      return;
    }

    _animController?.dispose();

    //Give more time — 2s per segment matches the stream delay
    // so animation fills the gap between location updates naturally
    final ms = ((meters / 8.33) * 1000).clamp(1500, 2000).toInt();

    _animController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: ms),
    );

    _anim = CurvedAnimation(parent: _animController!, curve: Curves.linear);

    _anim!.addListener(() {
      if (!mounted) return;
      final pos = lerpLatLng(from, to, _anim!.value);
      setState(() => _placeRiderAt(pos));
    });

    _animController!.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _animationFromPosition = to;
      }
    });

    _animController!.forward();
  }

  void _onNewLocation(RiderLocation location) {
    if (!mounted) return;
    final newPos = LatLng(location.lat, location.lng);

    ref.read(etaProvider.notifier).updateFromLocation(newPos);
    _animateMarker(_animationFromPosition, newPos);

    _mapController?.animateCamera(CameraUpdate.newLatLngZoom(newPos, 16));
  }

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      initialCameraPosition: CameraPosition(
        target: riderPolylineCoordinates.first,
        zoom: 15,
      ),
      markers: {
        ?_riderMarker,
        Marker(
          markerId: const MarkerId('destination'),
          position: _destination,
          icon:
              _destinationIcon ??
              BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
        ),
      },
      polylines: _polylines,
      onMapCreated: (c) => _mapController = c,
      myLocationEnabled: true,
      myLocationButtonEnabled: true,
    );
  }
}
