import 'package:flutter/material.dart';
import 'package:flutter_getx_pattern/app/modules/home/home_controller.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        builder: (_) => Scaffold(
          appBar: AppBar(title: Text('My Page')),
          body: Container(

          ),
        ),
    );
  }
}
