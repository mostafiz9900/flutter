import 'package:get/get.dart';

import 'package:getx_apps2/app/bindings/home_binding.dart';
import 'package:getx_apps2/app/ui/details_view.dart';
import 'package:getx_apps2/app/ui/home_view.dart';
import 'package:getx_apps2/app/ui/language_widget.dart';
import 'package:getx_apps2/app/ui/todo_view.dart';

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
      name: _Paths.DETAILS,
      page: () => DetailsView(),
      // binding: HomeBinding(),
           fullscreenDialog: true
    ),
    GetPage(
      name: _Paths.LANG,
      page: () => LanguageWidget(),
      // binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.TODO,
      page: () => TodoView(),
      // binding: HomeBinding(),
    ),

  ];
}
