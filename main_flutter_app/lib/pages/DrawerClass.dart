import 'package:flutter/material.dart';

class DrawerClass extends StatelessWidget {
  DrawerClass({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset('assets/images/backProfile.jpg'),
                Positioned(
                  left: 30,
                  bottom: 60,
                  child: Container(
                    height: 40,
                    width: 40,
                    child: Image.asset('assets/images/profile.png'),
                  ),
                ),
                Divider(),
                Positioned(
                  left: 25,
                  bottom: 25,
                  child: Text('User name',
                  style: TextStyle(color: Colors.white,fontSize: 20),),
                )
              ],
            ),
            SizedBox(height: 30,),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text("Profile"),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.adb),
              title: Text("Add"),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.arrow_back),
              title: Text("About"),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.arrow_back),
              title: Text("About"),
            ),
            Divider(), ListTile(
              leading: Icon(Icons.arrow_back),
              title: Text("About"),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.arrow_back),
              title: Text("About"),
            ),
            Divider(), ListTile(
              leading: Icon(Icons.arrow_back),
              title: Text("About"),
            ),
            Divider(), ListTile(
              leading: Icon(Icons.arrow_back),
              title: Text("About"),
            ),
            Divider(),



          ],
        ),
      ),
      body: Text("date"),
    );
  }
}
