import 'package:flutter/material.dart';
import 'package:flutter_getx_pattern/app/modules/details/details_controller.dart';
import 'package:get/get.dart';

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DetailsController>(
      init: DetailsController(),
      builder: (_) => Scaffold(
        appBar: AppBar(title: Text('My Page')),
        body: Container(
          child: Text("movie list page: ${_.movieList.length}"),
        ),
      ),
    );
  }
}
