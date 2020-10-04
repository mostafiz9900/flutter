import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_cli_exm/generated/locales.g.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      translationsKeys: AppTranslation.translations,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
  