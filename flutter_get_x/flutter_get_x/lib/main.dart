
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_get_x/model/student.dart';
import 'package:get/get.dart';

// void main() => runApp(MaterialApp(home: Home()));

void main() => runApp(GetMaterialApp(home: Home2()));

class Home2 extends StatelessWidget {
  Home2({Key key}) : super(key: key);

  // Instantiate your class using Get.put() to make it available for all "child" routes there.
  final Student student = Get.put(Student());

  @override
  Widget build(context) => Scaffold(
      // Use Obx(()=> to update Text() whenever count is changed.
      appBar: AppBar(title: Obx(() => Text("Clicks: ${student.count} "))),

      // Replace the 8 lines Navigator.push by a simple Get.to(). You don't need context
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          children: <Widget>[
            Center(
              child: RaisedButton(
                  child: Text("Go to Other"), onPressed: () => Get.to(Other())),
            ),
            Center(
              child: RaisedButton(
                  child: Text("Go to AwesomeView"), onPressed: () => Get.to(AwesomeView())),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add), onPressed: student.increment));
}

class Other extends StatelessWidget {
  // You can ask Get to find a Controller that is being used by another page and redirect you to it.
  final Student stuGet = Get.find();

  @override
  Widget build(context) {
    // Access the updated count variable
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(
            children: <Widget>[
              Center(child: Text('${stuGet.count}')),
              RaisedButton(
                  child: Text('go to back page'),
                  onPressed: () {
                    Get.back();
                  })
            ],
          ),
        ),
        floatingActionButton:
            FloatingActionButton(child: Icon(Icons.add), onPressed:(){
              Get.snackbar('title', "message",);

            }));
  }
}
class AwesomeController extends GetxController {
  final String title = 'My Awesome View';
}

// ALWAYS remember to pass the `Type` you used to register your controller!
class AwesomeView extends GetView<AwesomeController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Text( controller.title ), // just call `controller.something`
    );
  }
}

class Home extends StatelessWidget {
  var count = 0.obs;

  @override
  Widget build(context) => Scaffold(
      appBar: AppBar(title: Text("counter")),
      body: Padding(
        padding: const EdgeInsets.only(top: 300),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Obx(() => Text("$count")),
            ),
            RaisedButton.icon(
                onPressed: () {
                  count--;
                },
                icon: Icon(Icons.exposure_neg_1),
                label: Text('Decrement'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => count++,
      ));
}
