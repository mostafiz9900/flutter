import 'package:advance_router_getx/app/controller/home_controller.dart';
import 'package:advance_router_getx/app/ui/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: Container(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 200,
          ),
          RaisedButton(
            onPressed: () {
             Get.to(LoginPage());
            },
            child: Text('Login Page'),
          ),
          RaisedButton(
            onPressed: () {
              Get.toNamed('/contract');
            },
            child: Text('Contract  Page'),
          ),
          RaisedButton(
            onPressed: () {
              Get.toNamed('/signup');
            },
            child: Text('signup Page'),
          ),
          RaisedButton(
            onPressed: () {
              Get.toNamed('/detail');
            },
            child: Text('detail Page'),
          ),

        ],
      )),
    );
  }
}
