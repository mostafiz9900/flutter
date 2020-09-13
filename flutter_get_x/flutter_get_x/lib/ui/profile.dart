import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyProfile extends StatelessWidget {
  MyProfile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
     return Scaffold(

      body: Column(
        children: <Widget>[
          Center(
            child: Container(
              child: Text('this is profile page '),

            ),

          ),
          RaisedButton(
            child: Text('back home page'),
            onPressed: (){
              Get.back();
            },
          ),
          RaisedButton(
            child: Text('goto third page page'),
            onPressed: (){
              Get.toNamed('/third');
            },
          )
        ],
      ),
    );
  }
}
