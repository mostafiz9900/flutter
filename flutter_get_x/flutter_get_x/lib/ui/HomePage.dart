
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomePage extends StatelessWidget {
  HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      appBar: AppBar(
        title: Text('Home page'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: RaisedButton(
                child: Text('Profile page'),
                onPressed: (){
                  Get.toNamed('/profile');
                }

            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: RaisedButton(
                child: Text('third page'),
                onPressed: (){
                  Get.toNamed('/third');
                }

            ),
          )
        ],
      ),
    );
  }
}
