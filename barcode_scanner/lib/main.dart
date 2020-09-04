import 'dart:async';

import 'package:flutter/material.dart';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/services.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  String result = "Hey there !";

 /* Future _scanBarcode(BuildContext context) async {

    try {
      ScanResult scanResult = await BarcodeScanner.scan();
      result = scanResult.toString();
    } on PlatformException catch (e) {
      if (e.code == BarcodeScanner.cameraAccessDenied) {
        _showErrorSnackbar(
            context, 'The user did not grant the camera permission!');
      } else {
        _showErrorSnackbar(context, 'Unknown error: $e');
      }
    } catch (e) {
      _showErrorSnackbar(context, 'Unknown error: $e');
    }
  }

  void _showErrorSnackbar(BuildContext context, String error) {
    Scaffold.of(context).showSnackBar(
      SnackBar(
        content: Text(error),
      ),
    );
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QR Scanner"),
      ),
      body: Column(
        children: <Widget>[
          Center(child: Text(result)),
          RaisedButton.icon(
            icon: Icon(Icons.camera_alt),
            label: Text('flutter_barcode_scanner '),
            onPressed: () {},
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.camera_alt),
        label: Text("Scan"),
        onPressed: ()async {
          ScanResult scanResult = await BarcodeScanner.scan();
          setState(() {
            result = scanResult.toString();
          });

        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
/*
  Note
  1. add file android manifest file : <uses-permission android:name="android.permission.CAMERA" />
  1. add file flutter pubspec.yaml file dependencies :  barcode_scan: ^1.0.0

  */
}
