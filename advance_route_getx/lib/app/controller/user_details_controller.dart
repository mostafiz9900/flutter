import 'package:advance_route_getx/app/models/user.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';
import 'package:meta/meta.dart';

class UserDetailsController extends GetxController {

  User _user;
  User get user => _user;


@override
  void onInit() {
  super.onInit();
  _user=Get.arguments;
 print('Get arguments ${Get.arguments}');
  }
}