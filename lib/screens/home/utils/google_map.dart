import 'package:cookify/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

const LatLng currentLocation = LatLng(8.700700, 77.027634);

class MapView extends StatefulWidget {
  const MapView({super.key});

  @override
  State<MapView> createState() => _MapViewState();
}

class _MapViewState extends State<MapView> {
  final Map<String, Marker> _markers = {};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        zoomControlsEnabled: false,
        initialCameraPosition: const CameraPosition(
          target: currentLocation,
          zoom: 14,
        ),
        onMapCreated: (controller) {
          addMarker('test', currentLocation);
        },
        markers: _markers.values.toSet(),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: orange,
        onPressed: () {},
        label: const Text(
          'Current Location',
          style: TextStyle(color: Colors.white),
        ),
        icon: const Icon(
          Icons.location_history,
          color: Colors.white,
        ),
      ),
    );
  }

  addMarker(String id, LatLng location) {
    var marker = Marker(
      markerId: MarkerId(id),
      position: location,
      infoWindow: const InfoWindow(
        title: 'Title of the place',
        snippet: 'HomeTown',
      ),
    );
    _markers[id] = marker;
    setState(() {});
  }
}
