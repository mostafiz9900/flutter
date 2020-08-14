import 'dart:collection';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_google_places/flutter_google_places.dart';
import 'package:geocoder/geocoder.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_webservice/places.dart';

const kGoogleApiKey =  "AIzaSyBs538RiUkcytLxZ8_1RPH05XkalpvBZP0";

class GoogleMapView extends StatefulWidget {
  GoogleMapView({Key key}) : super(key: key);

  @override
  _GoogleMapViewState createState() {
    return _GoogleMapViewState();
  }
}

class _GoogleMapViewState extends State<GoogleMapView> {
  GoogleMapController mapController;

  String searchAddr;
  Set<Marker> _marker = HashSet<Marker>();
//  static const String kGoogleApiKey =  "AIzaSyBs538RiUkcytLxZ8_1RPH05XkalpvBZP0";

  GoogleMapsPlaces _places = GoogleMapsPlaces(apiKey: kGoogleApiKey);

  addMarker(cordinate){
    int id = Random().nextInt(100);
    setState(() {
      _marker.add(Marker(position: cordinate, markerId: MarkerId(id.toString())));
    });
  }
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
        body: Stack(
          children: <Widget>[
            GoogleMap(
              onMapCreated: onMapCreated,
              initialCameraPosition:  CameraPosition(
                      target: LatLng(23.822350, 90.365417), zoom: 10.0),
            markers: _marker.toSet(),
              onTap: (cordinate){
                mapController.animateCamera(CameraUpdate.newLatLng(cordinate));
                addMarker(cordinate);
                print('cordinale');
                print(addMarker(cordinate));

              },
            ),

            Positioned(
              top: 30.0,
              right: 15.0,
              left: 15.0,
              child: Container(
                height: 50.0,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0), color: Colors.white),
                child: TextField(
                  onTap: ()async{
                   /* Prediction p=await PlacesAutocomplete.show(context: context, apiKey: kGoogleApiKey,language: "pt",
                        components: [
                          Component(Component.country, "mz")
                        ]
                    );*/
                    /*Prediction p = await PlacesAutocomplete.show(
                        context: context, apiKey: kGoogleApiKey);
                    displayPrediction(p);
                    print('ontap achi');*/
                    Prediction p = await PlacesAutocomplete.show(
                        context: context,
                        apiKey: kGoogleApiKey,
                        mode: Mode.overlay, // Mode.fullscreen
                        language: "fr",
                        components: [new Component(Component.country, "fr")]);
                    print(displayPrediction(p));
                  },
                  decoration: InputDecoration(
                      hintText: 'Enter Address',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 15.0, top: 15.0),
                      suffixIcon: IconButton(
                          icon: Icon(Icons.search),
                          onPressed: searchandNavigate,
                          iconSize: 30.0)),
                  onChanged: (val) {
                    setState(() {
                      searchAddr = val;
                    });
                  },
                ),
              ),
            )
          ],
        ));
  }

  searchandNavigate() {
    Geolocator().placemarkFromAddress(searchAddr).then((result) {
      mapController.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
          target:
          LatLng(result[0].position.latitude, result[0].position.longitude),
          zoom: 10.0)));
      print(LatLng(result[0].position.latitude, result[0].position.longitude),);
    });

  }

  void onMapCreated(controller) {
    setState(() {
      mapController = controller;
      _marker.add(Marker(
          markerId: MarkerId("0"),
          position: LatLng(23.822350, 90.365417),
          infoWindow: InfoWindow(title: "Banglsdesh", snippet: "Dhaka")));

    });
  }
  Future<Null> displayPrediction(Prediction p) async {
    if (p != null) {
      PlacesDetailsResponse detail =
      await _places.getDetailsByPlaceId(p.placeId);

      var placeId = p.placeId;
      double lat = detail.result.geometry.location.lat;
      double lng = detail.result.geometry.location.lng;

      var address = await Geocoder.local.findAddressesFromQuery(p.description);
      var first = address.first;
      print('data');
      print("${first.featureName} : ${first.coordinates}");
      print("${first.featureName} : ${first.addressLine}");

      print(lat);
      print(lng);
    }
  }
}