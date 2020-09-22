import 'package:advance_route_getx/app/data/model/stuent.dart';
import 'package:advance_route_getx/app/data/repository/student_repository.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';

class StudentController extends GetxController {
  final StudentRepository repository;
  StudentController({@required this.repository}) : assert(repository != null);

  final _postsList = List<Student>().obs;
  get postList => this._postsList.value;
  set postList(value) => this._postsList.value = value;


  final _post = Student().obs;
  get post => this._post.value;
  set post(value) => this._post.value = value;

  getAll(){
    repository.getAll().then( (data){ this.postList = data; } );
  }
/*  final _studentList = List<Student>().obs;
  get studentList => this._studentList;
  set postList(value) => this._studentList.value = value;

  getAll(){
    repository.getAll().then( (data){
      this.postList = data;
      print(data);
      print('data');

    } );
  }*/

  // final _obj = ''.obs;
  // set obj(value) => _obj.value = value;
  // get obj => _obj.value;
}