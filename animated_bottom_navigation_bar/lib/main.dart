import 'dart:ui';

import 'package:animated_bottom_navigation_bar/json_parsing/json_parseing_map.dart';
import 'package:animated_bottom_navigation_bar/json_parsing/json_parsing.dart';
import 'package:animated_bottom_navigation_bar/models/student.dart';
import 'package:animated_bottom_navigation_bar/ui/weather_forecast.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(MyApp());
}

final ThemeData _appTheme=appThemeData();

ThemeData appThemeData() {
 final ThemeData bess=ThemeData.dark();
  return bess.copyWith(
    brightness: Brightness.dark,
    accentColor: Colors.amber,
    primaryColor:Colors.green,
    scaffoldBackgroundColor: Colors.blueGrey[500],
    backgroundColor: Colors.blueGrey,
  textTheme: _appTextTheme(bess.textTheme),
  //     textTheme: TextTheme(
  //     bodyText1:  TextStyle(
  //       fontWeight: FontWeight.bold,
  //       fontSize: 30
  //     )
  // )
  );

}
TextTheme _appTextTheme(TextTheme baseText){
  return baseText.copyWith(
   /* headline1: baseText.headline1.copyWith(
       fontSize: 55,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold
    ),
    caption: baseText.caption.copyWith(
        fontSize: 12,fontStyle: FontStyle.normal,fontWeight: FontWeight.normal
    ),
    body1: baseText.body1.copyWith(
        fontSize: 44,fontStyle: FontStyle.normal,fontWeight: FontWeight.normal
    ),*/
    button: baseText.button.copyWith(
      fontWeight: FontWeight.w900,
      letterSpacing: 1,
      fontSize: 30,
      backgroundColor: Colors.blueGrey[400],
      fontFamily: "Courgette"
    )
  ).apply(
    fontFamily: 'Courgette'
  //      alll effect bassetess class .apply user  
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: _appTheme,
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  PageController _pageController;
  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:  SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: <Widget>[
            ImagesView(),
            WeatherForecastView(),
            JsonParsing(),
            JsonParsingMap(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
              title: Text('Item One'),
              icon: Icon(Icons.home)
          ),
          BottomNavyBarItem(
              title: Text('Item Two'),
              icon: Icon(Icons.apps)
          ),
          BottomNavyBarItem(
              title: Text('Item Three'),
              icon: Icon(Icons.chat_bubble)
          ),
          BottomNavyBarItem(
              title: Text('Item Fore'),
              icon: Icon(Icons.settings)
          ),
        ],
      ),

    );
  }

}
class ImagesView extends StatelessWidget {
  final List<Student> student=Student.getStudent();
List bodyList=[
  'Mostafiz',
  'Mostafiz',
  'Mostafiz',
  'Mostafiz',
  'Mostafiz',
  'Mostafiz',

];
  @override
  Widget build(BuildContext context) {
      return Container(
        height: 1500,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: StaggeredGridView.count(
          crossAxisCount: 6,
          mainAxisSpacing: 3.0,
          crossAxisSpacing: 3.0,
          staggeredTiles: [
            StaggeredTile.count(3,2),
            StaggeredTile.count(3,2),
            StaggeredTile.count(2,2),
            StaggeredTile.count(2,2),
            StaggeredTile.count(2,2),


            //  StaggeredTile.count(3, 2),

            // StaggeredTile.count(1, 1),
          ],
          children: student.map((Student stu) => Card(
            child: Container(
              color: Colors.lightBlue[400],
                child: Text('${stu.name}',style: TextStyle(fontFamily: 'Courgette',),)
            ),
          )).toList()
        ),
      );

  }
  Widget myPhotoList(String img) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: NetworkImage(
              img),
        ),
      ),
    );
  }
}
