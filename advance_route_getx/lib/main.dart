import 'package:advance_route_getx/utils/translations.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get_storage/get_storage.dart';

import 'app/routes/app_pages.dart';

void main()async {
  GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      enableLog: true,
      // logWriterCallback: Logger.write,
      defaultTransition: Transition.zoom,
      translations: MyTranslations(),
      locale: Locale('ar'),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}


