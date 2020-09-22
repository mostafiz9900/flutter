import 'package:advance_route_getx/app/controller/student_controller.dart';
import 'package:advance_route_getx/app/data/provider/student_provider.dart';
import 'package:advance_route_getx/app/data/repository/student_repository.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class StudentBinding implements Bindings {


  @override
  void dependencies() {
    Get.lazyPut<StudentController>(() {
      return StudentController(
          repository:
          StudentRepository(apiClient: StudentApiClient(httpClient: http.Client())));
    });
  }
}