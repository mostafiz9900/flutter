import 'package:advance_route_getx/app/data/model/user.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';

class UserController extends GetxController {
final user=User().obs;

void updateUser(int count){
  user.update((val) {
    val.name='Mostafiz';
    val.id=count;
  });
}

  final _obj = ''.obs;
  set obj(value) => _obj.value = value;
  get obj => _obj.value;
}