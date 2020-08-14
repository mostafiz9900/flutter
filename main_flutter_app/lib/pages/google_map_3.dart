import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapView3 extends StatefulWidget {
  MapView3({Key key}) : super(key: key);

  @override
  _MapView3State createState() {
    return _MapView3State();
  }
}

class _MapView3State extends State<MapView3> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Map'),
      ),
      body: GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition: CameraPosition(
            target: LatLng(23.822350, 90.365417), zoom: 10.0,),
      ),
    );
  }
}
