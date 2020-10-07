import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_cli_exm/generated/locales.g.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(MyApp(),
  );
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ThemeController.to.getThemeModeFromStore();
    return  GetMaterialApp(
          //begin language translation stuff //https://github.com/aloisdeniel/flutter_sheet_localization
          // locale: languageController.getLocale, // <- Current locale
          // localizationsDelegates: [
          //   const AppLocalizationsDelegate(), // <- Your custom delegate
          //   GlobalMaterialLocalizations.delegate,
          //   GlobalWidgetsLocalizations.delegate,
          // ],
          // supportedLocales:
          // AppLocalizations.languages.keys.toList(), // <- Supported locales
          //end language translation stuff
          // navigatorObservers: [
          //   FirebaseAnalyticsObserver(analytics: FirebaseAnalytics()),
          // ],
          debugShowCheckedModeBanner: false,
          //defaultTransition: Transition.fade,
          // theme: AppThemes.lightTheme,
          // darkTheme: AppThemes.darkTheme,
          themeMode: ThemeMode.system,
          initialRoute: Routes.HOME,
          getPages: AppPages.routes,


    );
  }
}
