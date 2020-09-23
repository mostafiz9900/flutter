import 'package:advance_route_getx/app/controller/sum_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SumView extends StatelessWidget {
  final SumController _sumController = Get.put(SumController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sum Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetX<SumController>(
              // init: SumController(),
              builder: (_) => Text('                ${_.count1.value}'),
            ),
            GetX<SumController>(
              // init: SumController(),
              builder: (_) => Text('                ${_.count2.value}'),
            ),
            Text('                -------------------}'),
            GetX<SumController>(
              // init: SumController(),
              builder: (_) => Text('${_.sum}'),
            ),
            RaisedButton(
                child: Text('increment'.toUpperCase()),
                onPressed: () => _sumController.increment()),
            RaisedButton(
                child: Text('decrement'.toUpperCase()),
                onPressed: () => _sumController.decrement()),
            RaisedButton(
                child: Text('get storeg'.toUpperCase()),
                onPressed: () {
                  GetStorage box=GetStorage();
                  box.write('count1', Get.find<SumController>().count1.value);
                  box.write('count2', Get.find<SumController>().count2.value);
                }),
          ],
        ),
      ),
    );
  }
}
