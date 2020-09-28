import 'package:flutter_getx_pattern/app/data/model/request_token.dart';
import 'package:flutter_getx_pattern/app/data/provider/authentication_api.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';

class AuthenticationRepository {
  final AuthenticationAPI _api=Get.find<AuthenticationAPI>();

  // AuthenticationRepository( this._api);

 Future<RequestToken> newRequestToken() =>_api.newRequestToken();
 Future<RequestToken> validateWithLogin(
     {
       @required  String userName,
       @required String password,
       @required String requestToken
     }
     ) =>_api.validateWithLogin(userName: userName, password: password, requestToken: requestToken);


}

