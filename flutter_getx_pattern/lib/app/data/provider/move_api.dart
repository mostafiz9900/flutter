
import 'package:dio/dio.dart';
import 'package:flutter_getx_pattern/app/data/model/movie.dart';
import 'package:flutter_getx_pattern/app/utils/constants.dart';
import 'package:get/get.dart';

class MoveApi {
  final Dio _dio = Get.find<Dio>();

  Future<List<Movie>> getTopMoves() async {
    try {
      final response = await _dio.get('/movie/top_rated',
          queryParameters: {
            "api_key": Constants.THE_MOVIE_DB_API_KEY,
            "language": "en-US"
          });
      print(response);
     return (response.data["results"] as List).map((e) => Movie.fromJson(e)).toList();

    } catch (_) {

    }


  }
}
