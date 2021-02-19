import 'package:date_range_form_field/date_range_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart'; 
import 'package:getx_cli_exm/app/modules/home/home_controller.dart';
import 'package:getx_cli_exm/app/routes/app_pages.dart';
import 'package:mapbox_search_flutter/mapbox_search_flutter.dart';
String apiKey = "AIzaSyAjp5OfeOhMfejWHUjy0TVtdwhTlc_NYxs";
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
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SearchPage(),
                ),
              );
            },
          )

        ],
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
            child: RaisedButton(
                onPressed: () => Get.toNamed(Routes.WEB_VIDEO_PLA),
              child: Text('video player page'),
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
          SafeArea(
            child: DateRangeField(
                context: context,
                decoration: InputDecoration(
                  labelText: 'Date Range',
                  prefixIcon: Icon(Icons.date_range),
                  hintText: 'Please select a start and end date',
                  border: OutlineInputBorder(),
                ),
                initialValue: DateTimeRange(
                    start: DateTime.now(), end: DateTime.now()),
                validator: (value) {
                  if (value.start.isBefore(DateTime.now())) {
                    return 'Please enter a valid date';
                  }
                  return null;
                },
              ),
          ),
        ],
      ),
    );
  }
}
class SearchPage extends StatelessWidget {
  const SearchPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back_ios),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      body: SafeArea(
        bottom: false,
        child: MapBoxPlaceSearchWidget(
          popOnSelect: true,
          apiKey: apiKey,
          searchHint: 'Search around',
          onSelected: (place) {},
          context: context,
        ),
      ),
    );
  }
}