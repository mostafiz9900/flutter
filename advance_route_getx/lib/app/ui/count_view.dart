import 'package:advance_route_getx/app/controller/count_controller.dart';
import 'package:advance_route_getx/app/controller/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class CountView extends StatelessWidget {
  // final CountController controller=Get.put(CountController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Count Page')),
      body: Column(
        children: [
          GetX<CountController>(
              init: CountController(),
              builder: (_) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('${_.count1.value}'),
                    Text('${_.count2}'),
                    Text('${_.sum}'),

                   /* ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount:_.getUserList().length ,
                        itemBuilder: (BuildContext context, int index){
                        var userList=_.getUserList();
                        return Column(
                          children: [
                            Text('${userList[index].name}'),
                            Text('${userList[index].id}'),
                          ],
                        );
                        }
                    ),
*/

                    RaisedButton(
                      onPressed: (){
                        _.increment();
                      },
                      child: Text('inctement'),
                    ),
                    RaisedButton(
                      onPressed: (){
                        _.decrement();

                      },
                      child: Text('dectement'),
                    ),
                    Text("Name ${_.user.value.name}: Age: ${_.user.value.id}"),
                    Text("Name ${_.user.value.name}: Age: ${_.user.value.id}"),
                  ],
                );
              }),
          GetBuilder<CountController>(
            init: CountController(),
              builder: (c){
                return   Text('Counter ${c.count}');
              }),

          GetX<UserController>(
            init: UserController(),
            builder: (u){
              return Column(
                children: [
                  Text("${u.user.value.name}"),
                  Text("${u.user.value.id}"),
                ],
              );
            },
          ),
          Obx(() =>
          Text("${Get.find<UserController>().user.value.name}")
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          // Get.find<CountController>().incrementCount();
          Get.find<UserController>().updateUser(3
            // Get.find<UserController>().user.value.id
          );
          // controller.incrementCount();
        },

      ),
    );
  }
}

