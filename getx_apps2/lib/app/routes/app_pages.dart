import 'package:get/get.dart';

import 'package:getx_apps2/app/bindings/home_binding.dart';
import 'package:getx_apps2/app/ui/details_view.dart';
import 'package:getx_apps2/app/ui/home_view.dart';
import 'package:getx_apps2/app/ui/language_widget.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
       GetPage(
      name: Routes.DETAILS,
      page: () => DetailsView(),
      // binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.LANG,
      page: () => LanguageWidget(),
      // binding: HomeBinding(),
    ),
  ];
}
