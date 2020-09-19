import 'package:advance_router_getx/app/ui/contract.dart';
import 'package:advance_router_getx/app/ui/detail.dart';
import 'package:advance_router_getx/app/ui/home.dart';
import 'package:advance_router_getx/app/ui/login.dart';
import 'package:advance_router_getx/app/ui/signup.dart';
import 'package:get/get.dart';

part './app_routes.dart';

abstract class AppPages {
  static const INITIAL = Routes.HOME;
  static final pages = [
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginPage(),
    ),
    GetPage(
      name: Routes.SIGNUP,
      page: () => SignupPage(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
    ),
    GetPage(
      name: Routes.CONTRACT,
      page: () => ContractPage(),
    ),
    GetPage(
      name: Routes.DETAILS,
      page: () => DetailPage(),
    ),
  ];
}
