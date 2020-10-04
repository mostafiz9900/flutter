import 'package:get_server/get_server.dart';

import 'package:getx_cli_server2/app/modules/home/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}
