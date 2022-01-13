import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_getx_pattern/app/data/model/request_token.dart';
import 'package:flutter_getx_pattern/app/utils/constants.dart';
import 'package:get/get.dart';

class AuthenticationAPI{
final Dio _dio=Get.find<Dio>();

// AuthenticationAPI(this._dio);

Future<RequestToken> newRequestToken()async{
final response= await _dio.get(
    '/authentication/token/new',
  queryParameters: {
    'api_key':Constants.THE_MOVIE_DB_API_KEY
  }
  );
return RequestToken.fromJson(response.data);

}
Future<RequestToken> validateWithLogin({
  @required  String userName,
  @required String password,
  @required String requestToken
})async{
final response= await _dio.post(
    '/authentication/token/validate_with_login',
  queryParameters: {
    'api_key':Constants.THE_MOVIE_DB_API_KEY
  },
  data: {
      "username":userName,
      "password":password,
      "request_token":requestToken,
  }
  );
return RequestToken.fromJson(response.data);

}
}