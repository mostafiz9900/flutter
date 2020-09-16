import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_mgt/app/controller/home_controller.dart';
import 'package:getx_pattern_mgt/app/routes/app_pages.dart';
import 'package:getx_pattern_mgt/app/ui/widgets/loading_widget.dart';
class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();

  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(

      ),
    );
  }
}
/*
class HomePage extends GetView<HomeController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page'),),
      body:
      Container(
        child: Column(
          children: <Widget>[
            Text('data'),
            Container(
              child: RaisedButton(
                child: Text('Go To Details page'),
                onPressed: (){
                  Get.toNamed(Routes.DETAILS);
                },
              ),
            )
          ],
        ),
      ),
      */
/*Container(
      child: GetX<HomeController>(
          initState: (state) { Get.find<HomeController>().getAll() ;},
          builder: (_) {
            return
              _.postList.length < 1
                  ? LoadingWidget()
                  :
              ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_.postList[index].title ?? 'a'),
                    subtitle: Text(_.postList[index].body ?? 'b'),
                    onTap: ()=> _.details(_.postList[index]),
                  );
                },
                itemCount: _.postList.length,
              );
          }),
    ),*//*

    );
  }
}*/
