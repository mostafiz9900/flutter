import 'package:advance_route_getx/app/controller/sum_controller.dart';
import 'package:get/get.dart';

class SampleBinding extends Bindings{
  @override
  void dependencies() {
    print('sample controller binding');
  Get.lazyPut<SumController>(() => SumController());
  }

}