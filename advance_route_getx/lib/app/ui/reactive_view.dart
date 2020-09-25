import 'package:advance_route_getx/app/controller/reactive_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class ReactiveView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ReactiveController>(
      init: ReactiveController(),
        builder: (_){
          return Scaffold(
            appBar: AppBar(title: Text('My Page')),
            body:Obx(()=>ListView(
              children:_.mapItem.values.map((e) => ListTile(
                title:Text(e) ,
                trailing: IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () => _.removeMapList(e),
                ),
              )).toList(),
            )),
            
            
            /*Obx(()=> ListView.builder(
              shrinkWrap: true,
              itemCount: _.list.length,
              itemBuilder: (context,index){                
                final String item=_.list[index];
                return ListTile(
                  title: Text(item),
                  trailing: IconButton(
                    onPressed:(){
                      _.removeItem(index);
                    },
                    icon: Icon(Icons.delete),
                  ),
                  
                );
              },

            )),*/
            /*Container(
              height: 500,
              child: Column(
                children: [
         *//*    Center(child: Text('${_.count.value}')),
              Obx(()=> Center(child: Text('${_.count.value}'))),
              Obx(()=> Center(child: Text('${_.currentDate.value}'))),*//*

              // Obx(()=>Text('${_.currentDate.value}')
                ],
              ),
            ),*/
            floatingActionButton: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                  heroTag: 'add',
                  onPressed: (){
                    _.increment();
                  },
                  child: Icon(Icons.add_circle),
                ),
                FloatingActionButton(
                  heroTag: 'date',
                  onPressed: (){
                    _.showCurrentDate();
                  },
                  child: Icon(Icons.calendar_today),
                ),
                FloatingActionButton(
                  heroTag: 'listAdd',
                  onPressed: (){
                    // _.addList();
                    _.addMapList();
                  },
                  child: Icon(Icons.add),
                )
              ],
            ),
          );
        }
    );
  }
}
