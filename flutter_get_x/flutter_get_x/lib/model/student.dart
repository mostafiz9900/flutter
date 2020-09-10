import 'package:get/get.dart';

class Student extends GetxController {
  var count = 0.obs;

  increment() => count++;

  decrement() => count--;
}
