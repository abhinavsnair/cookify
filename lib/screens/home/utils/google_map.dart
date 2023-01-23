// ignore_for_file: prefer_const_constructors

import 'dart:developer';

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
      body: Stack(
        children: [
          GoogleMap(
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
          Padding(
            padding: const EdgeInsets.only(top: 80, right: 20, left: 20),
            child: Container(
              height: 40.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: boxOrange.withOpacity(0.6),
                borderRadius: BorderRadius.circular(15.r),
              ),
              child: TextField(
                cursorColor: boxOrange,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  hintText: 'Search',
                  contentPadding: EdgeInsets.all(8),
                  hintStyle: TextStyle(
                    color: Colors.white,
                  ),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      log('tap');
                    },
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
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
