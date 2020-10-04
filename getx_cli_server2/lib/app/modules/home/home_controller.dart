import 'package:get_server/get_server.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  
  final count = 0.obs;

  @override
  void onInit() {}

  @override
  void onReady() {}

  @override
  void onClose() {}

  increment() => count.value++;
}
