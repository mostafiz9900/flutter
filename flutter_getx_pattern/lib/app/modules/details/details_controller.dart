import 'package:flutter_getx_pattern/app/data/model/movie.dart';
import 'package:flutter_getx_pattern/app/data/repository/move_repository.dart';
import 'package:get/get.dart';

class DetailsController extends GetxController with StateMixin<List<Movie>> {
  final MoveRepository _moveRepository = Get.find<MoveRepository>();

  List<Movie> _list = [];
  List<Movie> get movieList => _list;

  @override
  void onReady() {
    super.onReady();
    loadMovie();
  }

  Future<void> loadMovie() async {
    try {
      _list = await _moveRepository.getTopMoves();
      print("movie length:${movieList.length}");
      update();


    } catch (e) {
      print(e);
    }
  }
  Future<void> logOut() async {
    /*await _localAuthRepository.clearSession();
    Get.offNamedUntil(AppRoutes.LOGIN, (_) => false);*/
  }
}


