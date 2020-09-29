import 'package:flutter_getx_pattern/app/data/repository/authentication_repository.dart';
import 'package:flutter_getx_pattern/app/routes/app_routes.dart';
import 'package:get/get.dart';

class TestController extends GetxController {

  @override
  void onReady() {
    init();
  }

  init() async {
    try {
           await Future.delayed(Duration(seconds: 2));
      Get.offNamed(
        AppRoutes.HOME
      );
    } catch (e) {
      print(e);
      print('erorr catch');

      Get.offNamed(AppRoutes.HOME);
    }
  }
}
