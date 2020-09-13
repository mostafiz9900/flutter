
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_get_x/model/student.dart';
import 'package:flutter_get_x/ui/HomePage.dart';
import 'package:flutter_get_x/ui/profile.dart';
import 'package:flutter_get_x/ui/third.dart';
import 'package:get/get.dart';

// void main() => runApp(MaterialApp(home: Home()));

/*void main() => runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(primaryColor: Colors.green),
        darkTheme: ThemeData.dark().copyWith(primaryColor: Colors.purple),
        // NOTE: Optional - use themeMode to specify the startup theme
        themeMode: ThemeMode.system,
        home: Home2()
    ));*/


void main() => runApp(( MyApp()));
class MyApp extends StatelessWidget {
  MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => HomePage(),
        ),
        GetPage(
          name: '/profile',
          page: () => MyProfile(),

        ),
        //You can define a different page for routes with arguments, and another without arguments, but for that you must use the slash '/' on the route that will not receive arguments as above.
       /* GetPage(
          name: '/profile/:user',
          page: () => UserProfile(),
        ),*/
        GetPage(
            name: '/third',
            page: () => Third(),
            transition: Transition.cupertino
        ),
      ],
    );
  }
}




























class Home2 extends StatelessWidget {
  Home2({Key key}) : super(key: key);

  // Instantiate your class using Get.put() to make it available for all "child" routes there.
  final Student student = Get.put(Student());

  @override
  Widget build(context) => Scaffold(
      // Use Obx(()=> to update Text() whenever count is changed.
      appBar: AppBar(
          title: Obx(() => Text("Clicks: ${student.count} ")),

      ),

      // Replace the 8 lines Navigator.push by a simple Get.to(). You don't need context
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          children: <Widget>[
            Center(
              child: RaisedButton(
                  child: Text("Go to Other"), onPressed: () => Get.to(Other())),
            ),
            Center(
              child: RaisedButton(
                  child: Text("Go to AwesomeView"), onPressed: () => Get.to(AwesomeView())),
            ),
            Center(
              child: RaisedButton(
                  child: Text("Go to MyHomePage"), onPressed: () => Get.to(MyHomePage())),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add), onPressed: student.increment));
}


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ThemeMode _themeMode = ThemeMode.system;

  @override
  Widget build(BuildContext context) {
    print('${MediaQuery.of(context).platformBrightness}');
    print('${Theme.of(context).brightness}');
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
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
        ],
      ),
    );
  }
}



class Other extends StatelessWidget {
  // You can ask Get to find a Controller that is being used by another page and redirect you to it.
  final Student stuGet = Get.find();

  @override
  Widget build(context) {
    // Access the updated count variable
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(
            children: <Widget>[
              Center(child: Text('${stuGet.count}')),
              RaisedButton(
                  child: Text('go to back page'),
                  onPressed: () {
                    Get.back();
                  })
            ],
          ),
        ),
        floatingActionButton:
            FloatingActionButton(child: Icon(Icons.add), onPressed:(){
              Get.snackbar('title', "message",);

            }));
  }
}
class AwesomeController extends GetxController {
  final String title = 'My Awesome View';
}

// ALWAYS remember to pass the `Type` you used to register your controller!
class AwesomeView extends GetView<AwesomeController> {

  final AwesomeController controller=Get.put(AwesomeController());
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Text( controller.title ), // just call `controller.something`
    );
  }
}

class Home extends StatelessWidget {
  var count = 0.obs;

  @override
  Widget build(context) => Scaffold(
      appBar: AppBar(title: Text("counter")),
      body: Padding(
        padding: const EdgeInsets.only(top: 300),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Obx(() => Text("$count")),
            ),
            RaisedButton.icon(
                onPressed: () {
                  count--;
                },
                icon: Icon(Icons.exposure_neg_1),
                label: Text('Decrement'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => count++,
      ));
}
