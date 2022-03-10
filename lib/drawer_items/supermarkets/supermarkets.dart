import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../strings.dart';

class Supermarkets extends StatefulWidget {

  static const String routeName = '/supermarkets';


  @override
  State<Supermarkets> createState() => _SupermarketsState();
}

class _SupermarketsState extends State<Supermarkets> {

  Completer<GoogleMapController> _controller = Completer();


  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

// отображение маркера _kGooglePlex на экране
  static final Marker _kGooglePlexMarker = Marker(
      markerId: MarkerId('_kGooglePlex'),
      infoWindow: InfoWindow(title: 'Google Plex'),
      icon: BitmapDescriptor.defaultMarker,
      position: LatLng(37.42796133580664, -122.085749655962)
  );

  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  // отображение маркера _kLakeMarker на экране
  static final Marker _kLakeMarker = Marker(
      markerId: MarkerId('_kLakeMarker'),
      infoWindow: InfoWindow(title: 'Lake'), // наименование объекта
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue), // цвет маркера синий
      position: LatLng(37.43296265331129, -122.08832357078792)
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Strings.supermarkets),
      ),
      body: GoogleMap(
        mapType: MapType.normal,
        markers: {
          _kGooglePlexMarker,
          _kLakeMarker
        },
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _goToTheLake,
        label: Text('To the lake!'),
        icon: Icon(Icons.directions_boat),
      ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}