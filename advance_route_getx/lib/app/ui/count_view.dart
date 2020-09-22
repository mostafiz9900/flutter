import 'package:advance_route_getx/app/controller/count_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class CountView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Count Page')),
      body: SingleChildScrollView(
        child: GetX<CountController>(
            init: CountController(),
            builder: (_) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Text('${_.count1.value}'),
                  // Text('${_.count2}'),
                  // Text('${_.sum}'),
                  ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
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
      )
    );
  }
}

