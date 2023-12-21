import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: FlutterMap(
              options:
                  MapOptions(center: LatLng(9.931233, 76.267303), zoom: 10),
              children: [
            TileLayer(
              urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
              userAgentPackageName: 'dev.fleaflet.flutter_map.example',
            ),
            MarkerLayer(markers: [
              Marker(
                  width: 250,
                  height: 250,
                  point: LatLng(9.931233, 76.267303),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 49,
                        color: Colors.amber,
                      ),
                      Image.asset(
                        "assets/images/ProfilePage/jiitak_logo-removebg-preview.png",
                      ),
                    ],
                  ))
            ])
          ])),
    );
  }
}
