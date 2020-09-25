import 'package:flutter_getx_pattern/app/modules/details/details_controller.dart';
import 'package:get/get.dart';

class DetailsBindings extends Bindings{
  @override
  void dependencies() {
Get.lazyPut(() => DetailsController());
  }

}