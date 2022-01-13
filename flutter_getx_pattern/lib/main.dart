import 'package:flutter/material.dart';
import 'package:flutter_getx_pattern/app/modules/test/test_binding.dart';
import 'package:flutter_getx_pattern/app/modules/test/test_page.dart';
import 'package:flutter_getx_pattern/app/routes/app_pages.dart';
import 'package:flutter_getx_pattern/app/utils/dependency_injection.dart';
import 'package:get/get.dart';

void main() {
  DependencyInjection.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SimpleBuilder(builder: (_){
      return GetMaterialApp(
        // smartManagement: SmartManagement.keepFactory,
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
    });
  }
}
