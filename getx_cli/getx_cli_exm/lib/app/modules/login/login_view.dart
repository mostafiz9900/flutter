import 'package:flutter/material.dart';
import 'package:get/get.dart'; 
import 'package:getx_cli_exm/app/modules/login/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('LoginView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'LoginView is working', 
          style: TextStyle(fontSize:20),
        ),
      ),
    );
  }
}
  