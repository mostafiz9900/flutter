import 'package:advance_route_getx/app/api/user_api.dart';
import 'package:advance_route_getx/app/models/user.dart';
import 'package:advance_route_getx/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';

class UserController extends GetxController {
/*final user=User().obs;

void updateUser(int count){
  user.update((val) {
    val.name='Mostafiz';
    val.id=count;
  });
}*/
List<User>userList=[];
List<User> get users => userList;
bool _isLoading=true;
bool get isLoading=>_isLoading;

Future<void> loadUser()async{
 final data=await UserApi.instance.getUser(1);
 this.userList=data;

 this._isLoading=false;
 update(['users']);
}
 userDetails(User user){
Get.toNamed(Routes.USER_DETAILS,
arguments: user

);
 }

@override
  void onReady() {
    super.onReady();
    this.loadUser();
  }

}