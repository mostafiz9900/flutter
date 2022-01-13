
import 'package:get/get.dart';
import 'package:getx_apps2/app/data/models/todo.dart';
import 'package:getx_apps2/app/data/providers/todo_provider.dart';
import 'package:native_pdf_view/native_pdf_view.dart';

class TodoController extends GetxController {
  var isLoading = true.obs;
  var todoList = List<Todo>().obs;

  @override
  void onInit() {

    fetchfinaltodo();
    super.onInit();
  }

  void fetchfinaltodo() async {
    isLoading(true);
    try {
      var todos = await TodoProvider.getTodo();
      if (todos != null) {
        todoList.value = todos;
      }
    } finally {
      isLoading(false);
    }
  }
}