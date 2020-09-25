import 'package:flutter/material.dart';
import 'package:flutter_getx_pattern/app/modules/test/test_controller.dart';
import 'package:get/get.dart';

class TestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<TestController>(
      init: TestController(),
      builder: (_) => Scaffold(
        appBar: AppBar(title: Text('My Page')),
        body: Container(
          child: Center(
            child: FlatButton(
                onPressed: () {
                  _.printMessage();
                },
                child: Text('print message')),
          ),
        ),
      ),
    );
  }
}
