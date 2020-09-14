import 'dart:convert';
import 'package:getx_pattern_mgt/app/data/model/my_model.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

const baseUrl = 'http://gerador-nomes.herokuapp.com/nomes/10';
const baseUrl2 = 'https://jsonplaceholder.typicode.com/posts';

class MyApiClient {
  final http.Client httpClient;

  MyApiClient({@required this.httpClient});

  final Map<String, String> _defaultHeaders = {
    'Content-Type': 'application/json'
  };

  Future<List<MyModel>> getAll() async {
    print(baseUrl2);
    print('baseUrl2');
    try {
      final response = await httpClient.get(baseUrl2);
      if (response.statusCode == 200) {
        Map<String, dynamic> jsonResponse = jsonDecode(response.body);
        return jsonResponse['data']
            .map((json) => MyModel.fromJson(json))
            .toList();
      } else {
        print('Error -getAll');
      }
    } catch (_) {}
    return null;
  }

  Future getId(id) async {
    try {
      final response = await httpClient.get(baseUrl);
      if (response.statusCode == 200) {
        Map<String, dynamic> jsonResponse = jsonDecode(response.body);
        // TODO: implement methods!
      } else{
        print('Error -getId');
      }
    } catch (_) {}
    return null;
  }

  Future add(obj) async {
    try {
      final response = await httpClient.post(baseUrl,
          headers: _defaultHeaders, body: jsonEncode(obj));
      if (response.statusCode == 200) {
        // TODO: implement methods!
      } else {
        print('Error -add');
      }
    } catch (_) {}
    return null;
  }

  Future edit(obj) async {
    try {
      final response = await httpClient.put(baseUrl,
          headers: _defaultHeaders, body: jsonEncode(obj));
      if (response.statusCode == 200) {
        // TODO: implement methods!
      } else {
        print('Error -edit');
      }
    } catch (_) {}
    return null;
  }

  Future delete(obj) async {
    try {
      final response = await httpClient.delete(baseUrl);
      if (response.statusCode == 200) {
        // TODO: implement methods!
      } else {
        print('Error -delete');
      }
    } catch (_) {}
    return null;
  }
}