
import 'package:flutter_getx_pattern/app/modules/details/details_binding.dart';
import 'package:flutter_getx_pattern/app/modules/details/details_page.dart';
import 'package:flutter_getx_pattern/app/modules/home/home_binding.dart';
import 'package:flutter_getx_pattern/app/modules/home/home_page.dart';
import 'package:flutter_getx_pattern/app/modules/login_page/login_page.dart';
import 'package:flutter_getx_pattern/app/modules/test/test_binding.dart';
import 'package:flutter_getx_pattern/app/modules/test/test_page.dart';
import 'package:flutter_getx_pattern/app/routes/app_routes.dart';
import 'package:get/route_manager.dart';
abstract class AppPages {
  static final List<GetPage> pages = [
    GetPage(
        name:AppRoutes.TEST,
        page:()=> TestPage(),
      binding: TestBinding(),
    ),
    GetPage(
        name:AppRoutes.LOGIN,
        page:()=> LoginPage(),
      // binding: TestBinding(),
    ),
    GetPage(
        name:AppRoutes.HOME,
        page:()=> HomePage(),
      // binding: TestBinding(),
    ),
    GetPage(
        name:AppRoutes.DETAILS,
        page:()=> DetailsPage(),
      binding: DetailsBindings(),
    ),
  ];
}




