import 'package:advance_route_getx/app/controller/magic_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/progress_bar/gf_progress_bar.dart';
class MagicPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Page')),
      body: Container(
        child: GetBuilder<MagicController>(
            init: MagicController(),
            builder: (_) {
              return Scaffold(
                body: Center(child: CircularProgressIndicator()),
              );
            }),
      ),
    );
  }
}
