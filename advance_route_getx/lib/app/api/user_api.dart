import 'package:dio/dio.dart';

class UserApi{
  UserApi._internal();
  static UserApi _instance=UserApi._internal();
  static UserApi get instance=>_instance;
  
  final dio=Dio();
}