import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:get/get.dart';
import 'package:realestate/core/constants/assets_constants.dart';
import 'package:realestate/core/utils/utils.dart';

class SearchController extends GetxController {
  late GoogleMapController mapController;

  static const CameraPosition initialPosition = CameraPosition(
    target: LatLng(52.507353, 13.484485),
    zoom: 3,
  );

  final RxList<Marker> markers = RxList<Marker>();

  @override
  void onInit() {
    addMarkers();
    super.onInit();
  }

  addMarkers() async {
    try {
      markers.clear();

      final Uint8List markerIcon =
      await Utils.getBytesFromAsset(AssetsConstants.markerIcon, 100);
      markers.addAll({
        Marker(
          markerId: const MarkerId('ch1'),
          onTap: () {},
          position: const LatLng(52.507353, 13.484485),
          icon: BitmapDescriptor.fromBytes(markerIcon),

        ),
        Marker(
          markerId: const MarkerId('ch2'),
          onTap: () {},
          position: const LatLng(52.560197, 13.345177),
          icon: BitmapDescriptor.fromBytes(markerIcon),
        ),
        Marker(
          markerId: const MarkerId('ch3'),
          onTap: () {},
          position: const LatLng(52.573171, 13.584588),
          icon: BitmapDescriptor.fromBytes(markerIcon),
        ),
        Marker(
          markerId: const MarkerId('ch4'),
          onTap: () {},
          position: const LatLng(50.049924, 14.495175),
          icon: BitmapDescriptor.fromBytes(markerIcon),
        ),
        Marker(
          markerId: const MarkerId('ch5'),
          onTap: () {},
          position: const LatLng(50.069055, 14.320701),
          icon: BitmapDescriptor.fromBytes(markerIcon),
        ),
        Marker(
          markerId: const MarkerId('ch6'),
          onTap: () {},
          position: const LatLng(51.729467, 19.476946),
          icon: BitmapDescriptor.fromBytes(markerIcon),
        ),
        Marker(
          markerId: const MarkerId('ch7'),
          onTap: () {},
          position: const LatLng(52.183922, 21.025014),
          icon: BitmapDescriptor.fromBytes(markerIcon),
        ),
        Marker(
          markerId: const MarkerId('ch8'),
          onTap: () {},
          position: const LatLng(53.127758, 17.975963),
          icon: BitmapDescriptor.fromBytes(markerIcon),
        ),
        Marker(
          markerId: const MarkerId('ch9'),
          onTap: () {},
          position: const LatLng(44.478785, 26.099864),
          icon: BitmapDescriptor.fromBytes(markerIcon),
        ),
        Marker(
          markerId: const MarkerId('ch10'),
          onTap: () {},
          position: const LatLng(44.391531, 26.021293),
          icon: BitmapDescriptor.fromBytes(markerIcon),
        ),
        Marker(
          markerId: const MarkerId('ch11'),
          onTap: () {},
          position: const LatLng(44.391531, 26.021293),
          icon: BitmapDescriptor.fromBytes(markerIcon),
        ),
        Marker(
          markerId: const MarkerId('ch12'),
          onTap: () {},
          position: const LatLng(44.941964, 25.986905),
          icon: BitmapDescriptor.fromBytes(markerIcon),
        ),
        Marker(
          markerId: const MarkerId('ch13'),
          onTap: () {},
          position: const LatLng(45.663987, 25.568177),
          icon: BitmapDescriptor.fromBytes(markerIcon),
        ),
        Marker(
          markerId: const MarkerId('ch14'),
          onTap: () {},
          position: const LatLng(45.626202, 25.665891),
          icon: BitmapDescriptor.fromBytes(markerIcon),
        ),
        Marker(
          markerId: const MarkerId('ch15'),
          onTap: () {},
          position: const LatLng(44.767304, 20.424886),
          icon: BitmapDescriptor.fromBytes(markerIcon),
        ),
        Marker(
          markerId: const MarkerId('ch16'),
          onTap: () {},
          position: const LatLng(42.673083, 23.409849),
          icon: BitmapDescriptor.fromBytes(markerIcon),
        ),
        Marker(
          markerId: const MarkerId('ch17'),
          onTap: () {},
          position: const LatLng(43.227080, 27.866896),
          icon: BitmapDescriptor.fromBytes(markerIcon),
        ),
        Marker(
          markerId: const MarkerId('ch18'),
          onTap: () {},
          position: const LatLng(41.993358, 21.482980),
          icon: BitmapDescriptor.fromBytes(markerIcon),
        ),
        Marker(
          markerId: const MarkerId('ch19'),
          onTap: () {},
          position: const LatLng(42.013321, 21.352583),
          icon: BitmapDescriptor.fromBytes(markerIcon),
        ),
        Marker(
          markerId: const MarkerId('ch20'),
          onTap: () {},
          position: const LatLng(39.635214, 22.479370),
          icon: BitmapDescriptor.fromBytes(markerIcon),
        ),
        Marker(
          markerId: const MarkerId('ch21'),
          onTap: () {},
          position: const LatLng(38.035634, 23.888267),
          icon: BitmapDescriptor.fromBytes(markerIcon),
        ),
        Marker(
          markerId: const MarkerId('ch22'),
          onTap: () {},
          position: const LatLng(42.439938, 19.271515),
          icon: BitmapDescriptor.fromBytes(markerIcon),
        ),
        Marker(
          markerId: const MarkerId('ch23'),
          onTap: () {},
          position: const LatLng(41.936669, 12.413568),
          icon: BitmapDescriptor.fromBytes(markerIcon),
        ),
        Marker(
          markerId: const MarkerId('ch24'),
          onTap: () {},
          position: const LatLng(45.495463, 12.253775),
          icon: BitmapDescriptor.fromBytes(markerIcon),
        ),
        Marker(
          markerId: const MarkerId('ch25'),
          onTap: () {},
          position: const LatLng(48.775318, 2.442400),
          icon: BitmapDescriptor.fromBytes(markerIcon),
        ),
        Marker(
          markerId: const MarkerId('ch26'),
          onTap: () {},
          position: const LatLng(49.014419, 2.167631),
          icon: BitmapDescriptor.fromBytes(markerIcon),
        ),
        Marker(
          markerId: const MarkerId('ch27'),
          onTap: () {},
          position: const LatLng(50.822642, 4.504764),
          icon: BitmapDescriptor.fromBytes(markerIcon),
        ),
        Marker(
          markerId: const MarkerId('ch28'),
          onTap: () {},
          position: const LatLng(52.325493, 4.939049),
          icon: BitmapDescriptor.fromBytes(markerIcon),
        ),
        Marker(
          markerId: const MarkerId('ch29'),
          onTap: () {},
          position: const LatLng(46.953491, 7.426913),
          icon: BitmapDescriptor.fromBytes(markerIcon),
        ),
        Marker(
          markerId: const MarkerId('ch30'),
          onTap: () {},
          position: const LatLng(47.024214, 28.848436),
          icon: BitmapDescriptor.fromBytes(markerIcon),
        ),
        Marker(
          markerId: const MarkerId('ch31'),
          onTap: () {},
          position: const LatLng(46.457263, 30.705602),
          icon: BitmapDescriptor.fromBytes(markerIcon),
        ),
        Marker(
          markerId: const MarkerId('ch32'),
          onTap: () {},
          position: const LatLng(46.407762, 30.729642),
          icon: BitmapDescriptor.fromBytes(markerIcon),
        ),
        Marker(
          markerId: const MarkerId('ch33'),
          onTap: () {},
          position: const LatLng(53.889264, 27.508702),
          icon: BitmapDescriptor.fromBytes(markerIcon),
        ),
        Marker(
          markerId: const MarkerId('ch34'),
          onTap: () {},
          position: const LatLng(54.863787, 23.882359),
          icon: BitmapDescriptor.fromBytes(markerIcon),
        ),
        Marker(
          markerId: const MarkerId('ch35'),
          onTap: () {},
          position: const LatLng(59.277708, 17.975970),
          icon: BitmapDescriptor.fromBytes(markerIcon),
        ),
        Marker(
          markerId: const MarkerId('ch36'),
          onTap: () {},
          position: const LatLng(59.866918, 10.807191),
          icon: BitmapDescriptor.fromBytes(markerIcon),
        ),
        Marker(
          markerId: const MarkerId('ch37'),
          onTap: () {},
          position: const LatLng(51.410337, -0.063891),
          icon: BitmapDescriptor.fromBytes(markerIcon),
        ),
        Marker(
          markerId: const MarkerId('ch38'),
          onTap: () {},
          position: const LatLng(51.608266, 0.101119),
          icon: BitmapDescriptor.fromBytes(markerIcon),
        ),
        Marker(
          markerId: const MarkerId('ch39'),
          onTap: () {},
          position: const LatLng(51.372208, -0.383555),
          icon: BitmapDescriptor.fromBytes(markerIcon),
        ),
        Marker(
          markerId: const MarkerId('ch40'),
          onTap: () {},
          position: const LatLng(39.968883, 32.813754),
          icon: BitmapDescriptor.fromBytes(markerIcon),
        ),
      });



    } catch (e) {
      // Handle errors if any
    }
  }

  void onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }
}
