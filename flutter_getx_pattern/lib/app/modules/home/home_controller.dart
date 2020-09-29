import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_pattern/app/data/model/request_token.dart';
import 'package:flutter_getx_pattern/app/data/repository/authentication_repository.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';

class HomeController extends GetxController {
  final  _repository=Get.find<AuthenticationRepository>();


  String _userName='',_password='';

void changeUserName(String text){
  this._userName=text;
}
 void changePassword(String text){
   this._password=text;
 }
 Future<void> submitData()async{
 try{
   // final  getToken=  Get.arguments as String;
   RequestToken requestToken = await _repository.newRequestToken();
  final RequestToken authRequestToken=await _repository.validateWithLogin(
       userName: _userName,
       password: _password,
       requestToken: requestToken.requestToken);

  print('login ok ${authRequestToken.requestToken}');
 }catch(e){
   print(e);
   String message = "";
   if (e is DioError) {
     if (e.response != null) {
       message = e.response.statusMessage;
     } else {
       message = e.message;
     }
 }
   Get.dialog(
     AlertDialog(
       title: Text("ERROR"),
       content: Text(message),
       actions: [
         FlatButton(
           child: Text("OK"),
           onPressed: () {
             Get.back();
           },
         )
       ],
     ),
   );
 }
}
}