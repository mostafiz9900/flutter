import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Login Page')),
      body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 200,
              ),
              RaisedButton(
                onPressed: () {
                  Get.toNamed('/');
                },
                child: Text('Home Page'),
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
                child: Text('Login Page'),
              ),
            ],
          )),
    );
  }
}
