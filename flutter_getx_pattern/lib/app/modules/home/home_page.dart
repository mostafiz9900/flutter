import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_getx_pattern/app/modules/home/home_controller.dart';
import 'package:flutter_getx_pattern/app/routes/app_routes.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (_) => Scaffold(
        appBar: AppBar(title: Text('Home Page')),
        body:GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Colors.transparent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  onChanged: _.changeUserName,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(labelText: "user name"),
                ),
                TextField(
                  onChanged: _.changePassword,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(labelText: "password"),
                ),
                FlatButton(
                    onPressed: _.submitData,
                    child: Text('Send',style: TextStyle(color: Colors.white),),
                color: Colors.black,
                ),
                FlatButton(
                    onPressed:() {
                      Get.toNamed(AppRoutes.DETAILS);
                    },
                    child: Text('Movie list',style: TextStyle(color: Colors.white),),
                color: Colors.black,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
