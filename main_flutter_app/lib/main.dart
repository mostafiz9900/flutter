import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mainflutterapp/pages/CardMaterial.dart';
import 'package:mainflutterapp/pages/CustomScrollViewSliver.dart';
import 'package:mainflutterapp/pages/DrawerClass.dart';
import 'package:mainflutterapp/pages/ListView_Titel_Builder_divider.dart';
import 'package:mainflutterapp/pages/Overlapping.dart';
import 'package:mainflutterapp/pages/Page1.dart';
void main(){
  runApp(MaterialApp(
    home: Dashboard(),
  )
  );
}
class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
//      dragStartBehavior: DragStartBehavior.start,

        children: <Widget>[
          Text('Dashboard'),
          FlatButton(
            child: Text('Page1'),
            onPressed: () {
              Route route=MaterialPageRoute(builder: (context)=> Page1());
              Navigator.push(context, route);
            },
          ),
          FlatButton(
            child: Text('Overlapping'),
            onPressed: () {
              Route route=MaterialPageRoute(builder: (context)=> Overlapping());
              Navigator.push(context, route);
            },
          ),
          FlatButton(
            child: Text('ListView_Titel_Builder_divider'),
            onPressed: () {
              Route route=MaterialPageRoute(builder: (context)=> ListView_Titel_Builder_divider());
              Navigator.push(context, route);
            },
          ),
          FlatButton(
            child: Text('DrawerClass'),
            onPressed: () {
              Route route=MaterialPageRoute(builder: (context)=> DrawerClass());
              Navigator.push(context, route);
            },
          ),
          FlatButton(
            child: Text('CardMaterial'),
            onPressed: () {
              Route route=MaterialPageRoute(builder: (context)=> CardMaterial());
              Navigator.push(context, route);
            },
          ),
          FlatButton(
            child: Text('CustomScrollViewSliver'),
            onPressed: () {
              Route route=MaterialPageRoute(builder: (context)=> CustomScrollViewSliver());
              Navigator.push(context, route);
            },
          ),
        ],
      ),
    );
  }
}
