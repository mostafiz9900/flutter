import 'package:advance_route_getx/app/controller/block_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class BlockView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Block Page')),
      body: Container(
        child: GetBuilder<BlockController>(

            init: BlockController(),
            builder: (_) {
              return Container(
                width: double.infinity,
                height: double.infinity,
                child:SafeArea(
                    child: Column(
                      children: [
                        SizedBox(height: 100,),
                        Text("${_.counter}"),
                        SizedBox(height: 20,),
                        RaisedButton(
                          child: Text('Increment'),
                          onPressed: (){
                            _.increment();
                          },
                        ),
                        SizedBox(height: 20,),
                        RaisedButton(
                          child: Text('Increment'),
                          onPressed: (){
                            _.decrement();
                          },
                        ),
                      ],
                    )

                ) ,
              );
            }),
      ),
    );
  }
}
/*
class Controller extends GetxController {
  static Controller get to => Get.find();
  [...]
}
// on you view:
GetBuilder<Controller>(
init: Controller(), // use it only first time on each controller
builder: (_) => Text(
'${Controller.to.counter}', //here
)
),
or

class Controller extends GetxController {
  // static Controller get to => Get.find(); // with no static get
  [...]
}
// on stateful/stateless class
GetBuilder<Controller>(
init: Controller(), // use it only first time on each controller
builder: (_) => Text(
'${Get.find<Controller>().counter}', //here
),
),*/
// GetBuilder vs GetX vs Obx vs MixinBuilder