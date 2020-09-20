import 'dart:ui';

import 'package:advance_route_getx/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final country = Get.arguments as Country;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          colorFilter: ColorFilter.linearToSrgbGamma(),
          image: NetworkImage(
              "https://images.pexels.com/photos/3902882/pexels-photo-3902882.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
        ),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 15.0, sigmaY: 15.0),
        child: Container(
          decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              title: Text("Details"),
              backgroundColor: Colors.black12,
              elevation: 0,
              centerTitle: true,
            ),
            body: Center(
              child:Column(
                children: [
                  RaisedButton(
                    child: Text('go to home page'.toUpperCase()),
                    onPressed: (){
                      Get.offAllNamed(Routes.HOME);
                    },
                  ),
                  RaisedButton(
                    child: Text('go to country page page'.toUpperCase()),
                    onPressed: (){
                      Get.offNamed(Routes.COUNTRY);
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
