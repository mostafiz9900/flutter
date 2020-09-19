import 'package:advance_router_getx/app/controller/ContractController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class ContractPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Page')),
      body: Container(
        child: GetX<ContractController>(
            init: ContractController(),
            builder: (_) {
              return Container();
            }),
      ),
    );
  }
}
