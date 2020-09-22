import 'package:advance_route_getx/app/data/provider/student_provider.dart';
import 'package:meta/meta.dart';

class StudentRepository {
  final StudentApiClient apiClient;

  StudentRepository({@required this.apiClient}) : assert(apiClient != null);

  getAll() {
    return apiClient.getAll();
  }

  getId(id) {
    return apiClient.getId(id);
  }

  delete(id) {
    return apiClient.delete(id);
  }

  edit(obj) {
    return apiClient.edit(obj);
  }

  add(obj) {
    return apiClient.add(obj);
  }
}

