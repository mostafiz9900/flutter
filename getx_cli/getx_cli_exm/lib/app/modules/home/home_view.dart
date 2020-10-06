import 'package:flutter/material.dart';
import 'package:get/get.dart'; 
import 'package:getx_cli_exm/app/modules/home/home_controller.dart';
import 'package:getx_cli_exm/app/routes/app_pages.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    ThemeMode _themeMode = ThemeMode.system;
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              'HomeView is working',
              style: TextStyle(fontSize:20),
            ),
          ),
          Center(
            child: RaisedButton(
                onPressed: () => Get.toNamed(Routes.LOGIN),
              child: Text('Login page'),
            ),
          ),
          Center(
            child: Text(
              'System Brightness: ${Get.mediaQuery.platformBrightness.toString()}',
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(height: 24),
          Center(
            child: Text(
              'Theme Brightness: ${Get.theme.brightness.toString()}',
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(height: 24),
          Text(
            'ThemeMode',
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.left,
          ),
          RadioListTile(
            title: Text('system'),
            value: ThemeMode.system,
            groupValue: _themeMode,
            onChanged: (value) {
              setState(() {
                _themeMode = value;
                Get.changeThemeMode(_themeMode); //STEP 3 - change themes
              });
            },
          ),
          RadioListTile(
            title: Text('dark'),
            value: ThemeMode.dark,
            groupValue: _themeMode,
            onChanged: (value) {
              setState(() {
                _themeMode = value;
                Get.changeThemeMode(_themeMode);
              });
            },
          ),
          RadioListTile(
            title: Text('light'),
            value: ThemeMode.light,
            groupValue: _themeMode,
            onChanged: (value) {
              setState(() {
                _themeMode = value;
                Get.changeThemeMode(_themeMode);
              });
            },
          ),
          RaisedButton.icon(
              onPressed: () {
                Get.changeTheme(Get.isDarkMode? ThemeData.light():ThemeData.dark());
                // Get.changeTheme(Get.isDarkMode? ThemeData.light(): ThemeData.dark());
              },
              icon: Icon(Icons.threed_rotation),
              label: Text('Theme change')),
        ],
      ),
    );
  }
}
  