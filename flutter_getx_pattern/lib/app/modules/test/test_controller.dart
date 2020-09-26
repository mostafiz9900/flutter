import 'package:flutter_getx_pattern/app/data/model/request_token.dart';
import 'package:flutter_getx_pattern/app/data/repository/authentication_repository.dart';
import 'package:flutter_getx_pattern/app/routes/app_routes.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';

class TestController extends GetxController {
 final AuthenticationRepository _repository;

  TestController(this._repository);

 @override
  void onReady() {
    super.onReady();
  }
  init()async{
 try{
 RequestToken requestToken=await  _repository.newRequestToken();
 Get.offNamed(AppRoutes.HOME);
 }catch(e){

 }
  }
}