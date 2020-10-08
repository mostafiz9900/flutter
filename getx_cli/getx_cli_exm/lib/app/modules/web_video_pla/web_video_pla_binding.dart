import 'package:get/get.dart';

import 'package:getx_cli_exm/app/modules/web_video_pla/web_video_pla_controller.dart';

class WebVideoPlaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WebVideoPlaController>(
      () => WebVideoPlaController(),
    );
  }
}
