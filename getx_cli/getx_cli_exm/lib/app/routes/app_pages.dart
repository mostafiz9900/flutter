import 'package:getx_cli_exm/app/modules/web_video_pla/web_video_pla_view.dart';
import 'package:getx_cli_exm/app/modules/web_video_pla/web_video_pla_binding.dart';
import 'package:getx_cli_exm/app/modules/login/login_view.dart';
import 'package:getx_cli_exm/app/modules/login/login_binding.dart';
import 'package:getx_cli_exm/app/modules/home/home_view.dart';
import 'package:getx_cli_exm/app/modules/home/home_binding.dart';
import 'package:get/get.dart';
part 'app_routes.dart';

class AppPages {
  
static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: Routes.HOME, 
      page:()=> HomeView(), 
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.LOGIN, 
      page:()=> LoginView(), 
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.WEB_VIDEO_PLA, 
      page:()=> WebVideoPlaView(), 
      binding: WebVideoPlaBinding(),
    ),
  ];
}