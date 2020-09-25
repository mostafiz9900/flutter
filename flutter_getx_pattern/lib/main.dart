import 'package:flutter/material.dart';
import 'package:flutter_getx_pattern/app/modules/test/test_binding.dart';
import 'package:flutter_getx_pattern/app/modules/test/test_page.dart';
import 'package:flutter_getx_pattern/app/routes/app_pages.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TestPage(),
      initialBinding: TestBinding(),
      getPages: AppPages.pages,
    );
  }
}
