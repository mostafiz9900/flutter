import 'package:advance_route_getx/app/bindings/sample_binding.dart';
import 'package:advance_route_getx/app/bindings/student_binding.dart';
import 'package:advance_route_getx/app/ui/all_country_info__view.dart';
import 'package:advance_route_getx/app/ui/block_view.dart';
import 'package:advance_route_getx/app/ui/count_view.dart';
import 'package:advance_route_getx/app/ui/country_view.dart';
import 'package:advance_route_getx/app/ui/detail_view.dart';
import 'package:advance_route_getx/app/ui/home_view.dart';
import 'package:advance_route_getx/app/ui/magic_page.dart';
import 'package:advance_route_getx/app/ui/product_list_view.dart';
import 'package:advance_route_getx/app/ui/reactive_view.dart';
import 'package:advance_route_getx/app/ui/student_view.dart';
import 'package:advance_route_getx/app/ui/sum_view.dart';
import 'package:advance_route_getx/app/ui/user/user_details_view.dart';
import 'package:advance_route_getx/app/ui/user/user_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

// ignore: avoid_classes_with_only_static_members
class AppPages {
  static const INITIAL = Routes.MAGIC_PAGE;
  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => HomeView(),
      // binding: StudentBinding(),
        transition: Transition.rightToLeft,

    ),
    GetPage(
      name: Routes.MAGIC_PAGE,
      page: () => MagicPage(),
      // binding: StudentBinding(),
        transition: Transition.zoom,

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
    GetPage(
        name: Routes.STUDENT,
        page: () => StudentView(),
        transition: Transition.zoom
    ),
    GetPage(
        name: Routes.SUM_PAGE,
        page: () => SumView(),
        transition: Transition.rightToLeftWithFade,
        binding: SampleBinding(),


    ),
    GetPage(
        name: Routes.USER_VIEW,
        page: () => UserView(),
        transition: Transition.rightToLeft,
        binding: SampleBinding(),


    ),
    GetPage(
        name: Routes.USER_DETAILS,
        page: () => UserDetailsView(),
        transition: Transition.zoom,
        binding: SampleBinding(),
    ),
    GetPage(
        name: Routes.PRODUCT,
        page: () => ProductListView(),
        transition: Transition.zoom,
        binding: SampleBinding(),
    ),
    GetPage(
        name: Routes.ALL_COUNTRY,
        page: () => AllCountryInfoView(),
        transition: Transition.rightToLeft,
        // binding: SampleBinding(),
    ),
    GetPage(
        name: Routes.REACTIVE,
        page: () => ReactiveView(),
        transition: Transition.rightToLeft,
        // binding: SampleBinding(),
    ),
  ];
}