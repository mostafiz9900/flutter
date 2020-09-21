import 'package:advance_route_getx/app/controller/count_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class CountView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Count Page')),
      body: Container(
        child: GetX<CountController>(
            init: CountController(),
            builder: (_) {
              return Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 300,),
                    Text('${_.count1.value}'),
                    Text('${_.count2}'),
                    Text('${_.sum}'),

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
                ),
              );
            }),
      ),
    );
  }
}

