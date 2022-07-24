import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Location {
  double? latitude;
  double? longitude;

  Future<void> getCurrentLocation() async {
    try {
      // LocationPermission permission = await Geolocator.requestPermission();
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low,
      );
      latitude = position.latitude;
      longitude = position.longitude;
      debugPrint('getLocation()');
      debugPrint('Latitude is: $latitude');
      debugPrint('Longitude is: $longitude');
    } catch (e) {
      debugPrint('$e');
    }
  }
}
