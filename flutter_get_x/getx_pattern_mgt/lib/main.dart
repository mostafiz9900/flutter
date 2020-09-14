import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:getx_pattern_mgt/app/routes/app_pages.dart';
import 'package:getx_pattern_mgt/app/translations/app_translations.dart';
import 'package:getx_pattern_mgt/app/ui/home/home_view.dart';
import 'package:getx_pattern_mgt/app/ui/theme/app_theme.dart';


void main() {
  runApp(
      GetMaterialApp(
        debugShowCheckedModeBanner: false,
        // initialBinding: HomeBinding(),
        initialRoute: Routes.HOME,
        theme: appThemeData,
        defaultTransition: Transition.fade,
        getPages: AppPages.pages,
        home: HomePage(),
        locale: Locale('pt', 'BR'),
        translationsKeys: AppTranslation.translations,
      )
  );
}

/*void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}*/


