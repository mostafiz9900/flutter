
import 'package:flutter_getx_pattern/app/modules/test/test_controller.dart';
import 'package:get/get.dart';

class TestBinding extends Bindings{
  @override
  void dependencies() {
   // final dio= Dio(BaseOptions(baseUrl: 'https://www.themoviedb.org/3'),);
   // final api= AuthenticationAPI();
   //  final repository=AuthenticationRepository();
    Get.lazyPut(() => TestController());
  }

}