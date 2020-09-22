import 'package:advance_route_getx/app/controller/student_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StudentView extends GetView<StudentController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: GetBuilder<StudentController>(
            initState: (state) {
              // Get.put<StudentControlle>;
              Get.put(StudentController);
              },
            builder: (_) {
              return
                _.postList.length < 1
                    ? CircularProgressIndicator()
                    :
                ListView.builder(
                  itemBuilder: (context, index) {
                    return Container(child: Text('${_.postList.length}'),);


                    /* ListTile(
                      title: Text(_.postList[index].title ?? 'a'),
                      subtitle: Text(_.postList[index].body ?? 'b'),
                      // onTap: ()=> _.details(_.postList[index]),
                    );*/
                  },
                  itemCount: _.postList.length,
                );
            }),
      ),
    );
  }
}
