import 'dart:convert';

import 'package:advance_route_getx/app/models/product.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';

class GlobalController extends GetxController {

 @override
  void onInit() {
    super.onInit();
    loadProduct();
  }

  List<Product> _productList=[];
  List<Product> get productList=> _productList;

 Future<void> loadProduct()async{
   final String productList=await rootBundle.loadString('assets/product.json');

   this._productList=(jsonDecode(productList) as List).map((e) => Product.fromJson(e)).toList();
   print('global  products');
   update(['products']);
  }
}