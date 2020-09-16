import 'package:get/get.dart';
import 'package:getx_pattern_mgt/app/ui/details_view/details_page.dart';
import 'package:getx_pattern_mgt/app/ui/home/home_view.dart';
part './app_routes.dart';

abstract class AppPages {
  AppPages._();
  static final pages = [
    GetPage(
      name: Routes.HOME,
      page:()=> HomePage(),
      transition: Transition.zoom
    ),
    GetPage(
        name: Routes.DETAILS,
        page:()=> DetailsPage()
    ),
  ];
}