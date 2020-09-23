import 'dart:ui';

import 'package:advance_route_getx/app/controller/all_country_info_controller.dart';
import 'package:advance_route_getx/app/data/model/all_country_info.dart';
import 'package:advance_route_getx/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CountryView extends StatelessWidget {
final AllCountryInfoController appCountryInfo=Get.put(AllCountryInfoController());

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              colorFilter: ColorFilter.linearToSrgbGamma(),
              image: NetworkImage(
                  "https://images.pexels.com/photos/3902882/pexels-photo-3902882.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"))),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 15.0, sigmaY: 15.0),
        child: Container(
          decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              title: Text("By Country"),
              backgroundColor: Colors.transparent,
              elevation: 0,
              centerTitle: true,
            ),
            body: Center(
              child: Column(
                children: [
                  RaisedButton(
                    child: Text('go to details page'.toUpperCase()),
                    onPressed: () {
                      Get.toNamed(Routes.DETAILS);
                    },
                  ),
                  RaisedButton(
                    child: Text('go to details off name page'.toUpperCase()),
                    onPressed: () {
                      // Get.offNamed(Routes.DETAILS);
                      Get.defaultDialog(
                          title: 'Page change',
                          middleText: 'are your change widget',
                          cancel: RaisedButton(
                            onPressed: () {
                              Get.back();
                            },
                            child: Text('cancle'),
                          ),
                          confirm: RaisedButton(
                            onPressed: () => Get.offNamed(Routes.DETAILS),
                            child: Text('Ok'),
                          )
                      );
                    },
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
