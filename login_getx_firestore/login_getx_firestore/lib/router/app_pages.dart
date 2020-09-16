import 'package:get/get.dart';
import 'package:login_getx_firestore/ui/splash_view.dart';
part './app_routes.dart';

abstract class AppPages {
  AppPages._();
  static final pages = [
    GetPage(name: Routes.SPLASH_UI, page:()=> SplashUI(),),
    // GetPage(name: '/signin', page: () => SignInUI()),
    // GetPage(name: '/signup', page: () => SignUpUI()),
    // GetPage(name: '/home', page: () => HomeUI()),
    // GetPage(name: '/settings', page: () => SettingsUI()),
    // GetPage(name: '/reset-password', page: () => ResetPasswordUI()),
    // GetPage(name: '/update-profile', page: () => UpdateProfileUI()),
  ];
}