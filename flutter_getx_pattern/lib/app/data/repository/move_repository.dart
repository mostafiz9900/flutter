import 'package:flutter_getx_pattern/app/data/model/movie.dart';
import 'package:flutter_getx_pattern/app/data/provider/move_api.dart';
import 'package:get/get.dart';

class MoveRepository {

  final MoveApi _moveApi=Get.find<MoveApi>();


  Future<List<Movie>> getTopMoves() =>_moveApi.getTopMoves();
}

