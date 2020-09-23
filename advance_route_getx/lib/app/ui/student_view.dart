import 'package:advance_route_getx/app/controller/student_controller.dart';
import 'package:advance_route_getx/app/data/provider/student_provider.dart';
import 'package:advance_route_getx/app/data/repository/student_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class StudentView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: GetX<StudentController>(
            initState: (state) {
              // Get.put<StudentControlle>;
              Get.put(StudentController);
              },
            init: StudentController(repository: StudentRepository(apiClient: StudentApiClient(httpClient:http.Client()))),
            builder: (s) {
              return
               s.postList.length < 1
                    ? CircularProgressIndicator()
                    :
                ListView.builder(
                  itemBuilder: (context, index) {
                    return Container(child: Text('${s.postList.leangth}'),);


                    /* ListTile(
                      title: Text(_.postList[index].title ?? 'a'),
                      subtitle: Text(_.postList[index].body ?? 'b'),
                      // onTap: ()=> _.details(_.postList[index]),
                    );*/
                  },
                  itemCount: s.postList.length,
                );
            }),
      ),
    );
  }
}
