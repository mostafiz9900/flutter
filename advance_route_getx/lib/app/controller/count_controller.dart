import 'package:advance_route_getx/app/data/model/user.dart';
import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';

class CountController extends GetxController {

  final count1 = 1.obs;
  final count2 = 0.obs;
  // String  get title => 'User Info'.obs;

  int get sum => count1.value + count2.value;
  get increment => (count1.value++)+(count2.value++);
   get decrement => (count1.value--)+(count2.value--);
  final user = User(name: "Mostafizur", id: 18).obs;
  final user2 = User().obs;


/*
  final _obj = ''.obs;
  set obj(value) => _obj.value = value;
  get obj => _obj.value;*/
}