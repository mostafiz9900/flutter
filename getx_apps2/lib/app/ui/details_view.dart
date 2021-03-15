import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_apps2/app/routes/app_pages.dart';


class DetailsView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(child: Column(
        children: <Widget>[
          Container(child: Text('details page'),),




        ],
      )),
    );
  }
}
