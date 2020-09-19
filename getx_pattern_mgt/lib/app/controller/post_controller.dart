import 'package:get/get.dart';
import 'package:getx_pattern_mgt/app/data/model/post.dart';
import 'package:getx_pattern_mgt/app/data/repository/post_repository.dart';
import 'package:getx_pattern_mgt/app/routes/app_pages.dart';
import 'package:meta/meta.dart';

class PostController extends GetxController {
  final PostRepository repository;
  PostController({@required this.repository}) : assert(repository != null);

  final _postsList = List<Post>().obs;
  get postList => this._postsList.value;
  set postList(value) => this._postsList.value = value;


  final _post = Post().obs;
  get post => this._post.value;
  set post(value) => this._post.value = value;

  getAll(){
    repository.getAll().then( (data){ this.postList = data; } );
  }

  adicionar(post){

  }
  //dismissible
  excluir(id){

  }
  //dismissible
  editar(){

  }
  details(post){
    this.post = post;
    Get.toNamed(Routes.DETAILS);
  }
}
/*
  final _obj = ''.obs;
  set obj(value) => _obj.value = value;
  get obj => _obj.value;*/
