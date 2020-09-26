import 'package:flutter_getx_pattern/app/data/model/request_token.dart';
import 'package:flutter_getx_pattern/app/data/provider/authentication_api.dart';
import 'package:meta/meta.dart';

class AuthenticationRepository {
  final AuthenticationAPI _api;

  AuthenticationRepository( this._api);

 Future<RequestToken> newRequestToken() =>_api.newRequestToken();


}

