import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'package:getx_apps2/app/config/theme/themes.dart' as themesData;
import 'package:getx_apps2/app/config/theme/theme_service.dart';



import 'app/routes/app_pages.dart';
import 'app/utils/themes.dart';
import 'generated/locales.g.dart';

void main()async {


  await GetStorage.init();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MyApp(),
  );
}
class MyApp extends StatelessWidget{
  final appdata = GetStorage(); // instance of GetStorage
/*
  final ChangeThemeController _changeThemeController =
  Get.put(ChangeThemeController());*/
  @override
  Widget build(BuildContext context) {
   /* bool isDarkMode = appdata.read('darkmode');
    _changeThemeController.setDarkTheme(isDarkMode);
    print(isDarkMode);
    print('isDarkMode');
    print(_changeThemeController.getIsDarkMode);*/
   return SimpleBuilder(
     builder: (_){
       return   GetMaterialApp(
         debugShowCheckedModeBanner: false,
         title: "Application",
         locale: Locale('ar', 'SA'),
         fallbackLocale:Locale('ar', 'SA'),
         initialRoute: AppPages.INITIAL,
         getPages: AppPages.routes,
         defaultTransition: Transition.fade,
         translationsKeys: AppTranslation.translations,
         // theme: ThemeData.light().copyWith(primaryColor: Colors.green,accentColor: Colors.amberAccent),
         // darkTheme: ThemeData.dark().copyWith(primaryColor: Colors.purple,accentColor: Colors.indigo),


         darkTheme: themesData.Themes.dark,
         theme: themesData.Themes.light,
         themeMode: ThemeService().theme,
         // Get.isDarkMode?Themes['GREEN']:Themes['PURPLE']
       /*  theme: _changeThemeController.getIsDarkMode
             ? ThemeData.dark().copyWith(
           primaryColor: Colors.deepPurpleAccent,
           accentColor: Colors.amber,

           textTheme: TextTheme(
             headline6: GoogleFonts.robotoCondensed(
               fontSize: 16.0,
               fontWeight: FontWeight.w600,
               color: Colors.white,
               letterSpacing: 1.0,
             ),
             headline5: GoogleFonts.robotoCondensed(
               fontSize: 20.0,
               fontWeight: FontWeight.w700,
               color: Colors.white,
               letterSpacing: 1.0,
             ),
             headline4: GoogleFonts.robotoCondensed(
               fontSize: 24.0,
               fontWeight: FontWeight.w800,
               color: Colors.white,
               letterSpacing: 1.0,
             ),
           ),
           appBarTheme: AppBarTheme(
             elevation: 0.0,
             color: Colors.black54,

           ),)
             : ThemeData.light().copyWith(
           primaryColor: Colors.deepPurpleAccent,
           accentColor: Colors.amber,
           appBarTheme: AppBarTheme(
             elevation: 0.0,
           ),
           textTheme: TextTheme(
             headline6: GoogleFonts.robotoCondensed(
               fontSize: 16.0,
               fontWeight: FontWeight.w600,
               color: Colors.white,
               letterSpacing: 1.0,
             ),
             headline5: GoogleFonts.robotoCondensed(
               fontSize: 20.0,
               fontWeight: FontWeight.w700,
               color: Colors.black,
               letterSpacing: 1.0,
             ),
             headline4: GoogleFonts.robotoCondensed(
               fontSize: 24.0,
               fontWeight: FontWeight.w800,
               color: Colors.black,
               letterSpacing: 1.0,
             ),
           ),
         ),*/

       );
     },
   );

  }
}