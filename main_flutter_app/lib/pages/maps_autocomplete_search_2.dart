import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:search_map_place/search_map_place.dart';

const kGoogleApiKey = "AIzaSyAjp5OfeOhMfejWHUjy0TVtdwhTlc_NYxs";

class MapSearchAuto3 extends StatefulWidget {
  MapSearchAuto3({Key key}) : super(key: key);

  @override
  _MapSearchAuto3State createState() {
    return _MapSearchAuto3State();
  }
}

class _MapSearchAuto3State extends State<MapSearchAuto3> {
  GoogleMapController _mapController;
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
        body: Center(
           child: SearchMapPlaceWidget(
             apiKey: kGoogleApiKey,
             // The language of the autocompletion
             language: 'en',
             // The position used to give better recomendations. In this case we are using the user position
//             location: userPosition.coordinates,
             radius: 30000,
             onSelected: (Place place) async {
               final geolocation = await place.geolocation;

               // Will animate the GoogleMap camera, taking us to the selected position with an appropriate zoom
               final GoogleMapController controller = await _mapController;
//               final GoogleMapController controller = await _mapController.future;
               controller.animateCamera(CameraUpdate.newLatLng(geolocation.coordinates));
               controller.animateCamera(CameraUpdate.newLatLngBounds(geolocation.bounds, 0));
             },
           ),
            /*child:SearchMapPlaceWidget(
              placeType: PlaceType.establishment,
              language: 'se',
              apiKey: kGoogleApiKey,
              onSelected: (place)async{


                final geolocation = await place.geolocation;

                final chosenPlace = Marker(
                  markerId: MarkerId('chosen-location'),
                  icon: await BitmapDescriptor.defaultMarker,
                  position: geolocation.coordinates,

                );


//                GoogleMapController controller = await _mapController.future;
                GoogleMapController controller = await _mapController;
                setState(() {
//                  _selectedPlace = place;
//                  _markers.add(chosenPlace);
                });


                controller.animateCamera(CameraUpdate.newLatLng(geolocation.coordinates));
                controller.animateCamera(CameraUpdate.newLatLngBounds(geolocation.bounds, 50));

              },
            ),*/
        ));
  }
}
