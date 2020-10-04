import 'package:getx_cli_server2/app/modules/home/home_view.dart';
import 'package:getx_cli_server2/app/modules/home/home_binding.dart';
import 'package:get_server/get_server.dart';
part 'app_routes.dart';

class AppPages {
  
static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: Routes.HOME, 
      page:()=> HomeView(), 
      binding: HomeBinding(),
    ),
  ];
}