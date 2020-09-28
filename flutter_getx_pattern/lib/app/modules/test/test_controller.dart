import 'package:flutter_getx_pattern/app/data/model/request_token.dart';
import 'package:flutter_getx_pattern/app/data/repository/authentication_repository.dart';
import 'package:flutter_getx_pattern/app/routes/app_pages.dart';
import 'package:flutter_getx_pattern/app/routes/app_routes.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';

class TestController extends GetxController {
  final AuthenticationRepository _repository =
      Get.find<AuthenticationRepository>();

  // TestController(this._repository);

  @override
  void onReady() {
    init();
  }

  init() async {
    try {
           // await Future.delayed(Duration(seconds: 2));
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
