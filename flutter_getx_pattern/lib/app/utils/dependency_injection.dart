
import 'package:dio/dio.dart';
import 'package:flutter_getx_pattern/app/data/model/request_token.dart';
import 'package:flutter_getx_pattern/app/data/provider/authentication_api.dart';
import 'package:flutter_getx_pattern/app/data/repository/authentication_repository.dart';
import 'package:get/get.dart';


/*class MockAuthenticationAPI implements AuthenticationAPI{
  @override
  Future<RequestToken> newRequestToken() {
 Exception('test error');
  }

}*/


class DependencyInjection{
  
 static void init(){
    // Get.lazyPut<Dio>(() => Dio(BaseOptions(baseUrl: 'https://api.themoviedb.org/3/movie/550')));
    Get.lazyPut<Dio>(() => Dio(BaseOptions(baseUrl: 'https://api.themoviedb.org/3')));

    Get.lazyPut<AuthenticationAPI>(() => AuthenticationAPI());


    Get.lazyPut<AuthenticationRepository>(() => AuthenticationRepository());
  }
}