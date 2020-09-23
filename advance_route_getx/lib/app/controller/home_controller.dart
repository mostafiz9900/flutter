import 'package:advance_route_getx/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';

class HomeController extends GetxController {

  final _obj = ''.obs;
  set obj(value) => _obj.value = value;
  get obj => _obj.value;
  @override
  void onReady() {
    super.onReady();

  }
}