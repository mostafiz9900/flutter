
import 'package:getx_pattern_mgt/app/controller/home_controller.dart';
import 'package:getx_pattern_mgt/app/data/provider/my_provider.dart';
import 'package:getx_pattern_mgt/app/data/repository/home_repository.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';

class ModelBinding implements Bindings {
  @override
  void dependencies() {
  /*  Get.lazyPut<ModelController>(() {
      return ModelController(
          repository:
          MyRepository(apiClient: MyApiClient(httpClient: http.Client())));
    });*/
  }
}