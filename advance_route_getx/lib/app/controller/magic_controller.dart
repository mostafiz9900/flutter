import 'package:advance_route_getx/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';

class MagicController extends GetxController {

@override
  void onReady() {
    super.onReady();
    Future.delayed(Duration(seconds: 5),(){
      Get.offNamed(Routes.HOME);
    });
  }
  @override
  onClose(){
  super.onClose();
  print('on close magic controller 5 sec');
}

}
