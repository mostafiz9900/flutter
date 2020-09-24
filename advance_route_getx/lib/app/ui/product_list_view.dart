import 'package:advance_route_getx/app/controller/global_controller.dart';
import 'package:advance_route_getx/app/models/product.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class ProductListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<GlobalController>(
      init: GlobalController(),
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: Text('My Page')),
          body: ListView.builder(
            itemCount: _.productList.length,
              itemBuilder: (context,index){
              final Product product=_.productList[index];
              return Text('${product.id}');
              }
          ),
        );
      }
    );
  }
}
