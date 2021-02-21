import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:getx_apps2/app/controllers/change_theme_controller.dart';
import 'package:getx_apps2/app/routes/app_pages.dart';
import 'package:getx_apps2/app/utils/constants.dart';

import '../controllers/home_controller.dart';

class HomeView extends StatelessWidget {

  // final ChangeThemeController _changeThemeController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      appBar: AppBar(
        bottomOpacity: 0.0,
        title: Text(
          'Expense App',
          // style: Theme.of(context).textTheme.headline6.copyWith(
          //   fontSize: 20.0,
          // ),
        ),
        actions: [

          RaisedButton(
            onPressed: () {
              if (Get.isDarkMode)
                Get.changeThemeMode(ThemeMode.light);
              else
                Get.changeThemeMode(ThemeMode.dark);
            },
            child: Text("dark mode"),
          )
          /*  Obx(
                  () => Switch.adaptive(
                value: _changeThemeController.getIsDarkMode,
                onChanged: (val) => _changeThemeController.setDarkTheme(val),
              ),
            ),*/

        ],
      ),
      drawer:GFDrawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            GFDrawerHeader(
              currentAccountPicture: GFAvatar(
                radius: 80.0,
                backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg"),
              ),
              otherAccountsPictures: <Widget>[
                Image(
                  image: NetworkImage("https://cdn.pixabay.com/photo/2019/12/20/00/03/road-4707345_960_720.jpg"),
                  fit: BoxFit.cover,
                ),
                GFAvatar(
                  child: Text("ab"),
                )
              ],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('user name'),
                  Text('user@userid.com'),
                ],
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () => Get.toNamed(Routes.DETAILS),
            ),
            ListTile(
              title: Text('Languages'),
              onTap: () => Get.toNamed(Routes.LANG),
            ),
        ListTile(
          title: Text('english'.tr),
          onTap: () {
            var locale = Locale('en', 'US');
            Get.updateLocale(locale);
          },
        ),
            ListTile(
              title: Text(Get.isDarkMode? 'Light Mode': 'Dark Mode'),
              onTap: () {
                print(Get.isDarkMode);
                print('isDarkMode');
            /* if(Get.isDarkMode){
               Constants.APP_DATA.writeIfNull('is_light', true);
               Get.changeTheme(ThemeData.light());

             }else{
               Get.changeTheme(ThemeData.dark());
             }*/
            // Get.changeTheme(Get.isDarkMode? ThemeData.light():ThemeData.dark());
    if (Get.isDarkMode)
    Get.changeThemeMode(ThemeMode.light);
    else
    Get.changeThemeMode(ThemeMode.dark);

              },
            ),
            ListTile(
              title: Text('arabic'.tr),


              onTap: () {
                var locale = Locale('ar', 'SA');
                Get.updateLocale(locale);
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          RaisedButton(
            color: Colors.blue,
            onPressed: () {
              Get.toNamed(Routes.DETAILS);
            },
            splashColor: Colors.blueGrey,
            child: Text(
              'OK',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
          Center(
            child: Text(
              'buttons_login'.tr,
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
