import 'package:advance_route_getx/app/controller/block_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class BlockView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Block Page')),
      body: Container(
        child: GetX<BlockController>(
            init: BlockController(),
            builder: (_) {
              return Container(
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
