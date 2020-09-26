import 'package:dio/dio.dart';
import 'package:flutter_getx_pattern/app/data/model/request_token.dart';
import 'package:flutter_getx_pattern/app/utils/constants.dart';

class AuthenticationAPI{
final Dio _dio;

AuthenticationAPI(this._dio);

Future<RequestToken> newRequestToken()async{
final Response response= await _dio.get(
    '/authentication/token/new',
  queryParameters: {
    'api_key':Constants.THE_MOVIE_DB_API_KEY
  }
  );
return RequestToken.fromJson(response.data);

}
}