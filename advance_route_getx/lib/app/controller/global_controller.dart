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

 Map<String,Product> _favorite=Map();
  List<Product> get productList=> _productList;
  Map<String,Product> get favorite=>_favorite;

 Future<void> loadProduct()async{
   final String productList=await rootBundle.loadString('assets/product.json');

   this._productList=(jsonDecode(productList) as List).map((e) => Product.fromJson(e)).toList();
   print('global  products');
   update(['products']);
  }
  onFavorite(int index, bool isFavorites){
   Product product=_productList[index];
   product.isFavorite=isFavorites;
   if(isFavorites){
     this._favorite[product.name]=product;
   }else{
     this._favorite.remove(product.name);
   }
   update(['products','favorites']);
  }
}