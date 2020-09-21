import 'package:advance_route_getx/app/ui/block_view.dart';
import 'package:advance_route_getx/app/ui/count_view.dart';
import 'package:advance_route_getx/app/ui/country_view.dart';
import 'package:advance_route_getx/app/ui/detail_view.dart';
import 'package:advance_route_getx/app/ui/home_view.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

// ignore: avoid_classes_with_only_static_members
class AppPages {
  static const INITIAL = Routes.HOME;
  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => HomeView(),
      // binding: HomeBinding(),
        transition: Transition.rightToLeft,

    ),
    GetPage(
      name: Routes.COUNTRY,
      page: () => CountryView(),
        transition: Transition.upToDown
    ),
    GetPage(
      name: Routes.DETAILS,
      page: () => DetailsView(),
        transition: Transition.cupertino
    ),
    GetPage(
        name: Routes.COUNTS,
        page: () => CountView(),
        transition: Transition.zoom
    ),
    GetPage(
        name: Routes.BLOCk,
        page: () => BlockView(),
        transition: Transition.zoom
    ),
  ];
}