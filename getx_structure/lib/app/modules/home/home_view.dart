import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_structure/app/modules/home/home_controller.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: Container(
          child: GetBuilder<HomeController>(

              //autoRemove: false,
              //assignId: false,
              init: HomeController(),
              initState: (state) {
                Get.find<HomeController>().setName = 'fast code get snittpets';
              },
              builder: (_) {
                return
                    // _.getName.isEmpty
                    // ? Center(child: CircularProgressIndicator())
                    // :
                    ListView.separated(
                        separatorBuilder: (context, index) => Divider(
                              height: 1,
                            ),
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return ListTile(
                            onTap: () {},
                            title: Text(_.name),
                            subtitle: Text(index.toString()),
                          );
                        });
              })),
    );
  }
}
