import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

// void main() => runApp(MyApp());

class NearByPeople extends StatefulWidget {
  @override
  _NearByPeopleState createState() => _NearByPeopleState();
}

class _NearByPeopleState extends State<NearByPeople> {
  GoogleMapController mapController;

  final LatLng _center = const LatLng(9.077751, 8.6774567);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Based on Nearby People'),
          backgroundColor: Colors.brown,
        ),
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 7.0,
          ),
        ),
      ),
    );
  }
}
