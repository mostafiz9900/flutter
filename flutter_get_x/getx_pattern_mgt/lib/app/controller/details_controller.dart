import 'package:get/get.dart';
import 'package:getx_pattern_mgt/app/data/model/my_model.dart';
import 'package:getx_pattern_mgt/app/data/repository/home_repository.dart';
import 'package:meta/meta.dart';

class DetailsController extends GetxController {

  final HomeRepository repository;
  DetailsController({@required this.repository}) : assert(repository != null);

  final _post = MyModel().obs;
  get post => this._post.value;
  set post(value) => this._post.value = value;


  editar(post){
    print('editar');
  }
  delete(id){
    print('deletar');
  }
}