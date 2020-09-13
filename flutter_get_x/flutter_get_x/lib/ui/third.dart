
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Third extends StatelessWidget {
  Third({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      body: Column(
        children: <Widget>[
          Center(
            child: Container(
              child: Text('this is third page '),

            ),

          ),
          RaisedButton(
            child: Text('back home page'),
            onPressed: (){
              Get.back();
            },
          )
        ],
      ),
    );
  }
}
