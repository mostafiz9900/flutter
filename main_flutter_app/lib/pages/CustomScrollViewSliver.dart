import 'package:flutter/material.dart';

class CustomScrollViewSliver extends StatelessWidget {
  CustomScrollViewSliver({Key key}) : super(key: key);
  List _people = [
    {"name": "Mostafizur Rahman", "email": "mostafiz@gmail.com"},
    {"name": "Sofiqul", "email": "sofiqul@gmail.com"},
    {"name": "Mahabub", "email": "mahabub@gmail.com"},
    {"name": "Labony", "email": "labony@gmail.com"},
    {"name": "Farzana", "email": "farzana@gmail.com"},
    {"name": "Arefin", "email": "arefin@gmail.com"},
    {"name": "Arefin", "email": "arefin@gmail.com"},
    {"name": "Arefin", "email": "arefin@gmail.com"},
    {"name": "Arefin", "email": "arefin@gmail.com"},
    {"name": "Arefin", "email": "arefin@gmail.com"},
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('ListView_Titel_Builder_divider'),
        ),
        body: ListView.builder(
          itemCount: _people.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: <Widget>[
                ListTile(
                  title: Text("Name :"+_people[index]["name"]),
                  trailing: Text("Email :"+_people[index]["email"]),
//                  subtitle: Text(_people[index]["email"]),
                )
              ],
            );
          },
        )
      /*Column(
        children: <Widget>[
          Container(
            height: 100,
            child: ListView(
              children: <Widget>[
                Text(_longText +
                    _longText +
                    _longText +
                    _longText +
                    _longText +
                    _longText),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
            height: 200,
            child: ListView(
//              scrollDirection: Axis.horizontal,
              children: <Widget>[
                */ /*  _cell(),
                SizedBox(height: 10,),
                _cell(),
                Divider(),
                _cell(),
                _cell(),
                _cell(),
                _cell(),
                _cell(),*/ /*
                ListTile(
                  leading: CircleAvatar(child:Text('H'),
                  ),
                  title: Text('Mostafiz'),
                  subtitle: Text('mostafiz.com'),
                  onTap: (){},
                ),
                Divider(),
                ListTile(
                  leading: CircleAvatar(child:Text('H'),
                  ),
                  title: Text('Mostafiz'),
                  subtitle: Text('mostafiz.com'),
                  onTap: (){},
                ),
                Divider(),
                ListTile(
                  leading: CircleAvatar(child:Text('H'),
                  ),
                  title: Text('Mostafiz'),
                  subtitle: Text('mostafiz.com'),
                  onTap: (){},
                ),
                Divider(),
                ListTile(
                  leading: CircleAvatar(child:Text('H'),
                  ),
                  title: Text('Mostafiz'),
                  subtitle: Text('mostafiz.com'),
                  onTap: (){},
                ),
                Divider(),
                ListTile(
                  leading: CircleAvatar(child:Text('H'),
                  ),
                  title: Text('Mostafiz'),
                  subtitle: Text('mostafiz.com'),
                  onTap: (){},
                ),
              ],
            ),
          ),
        ],
      ),*/
    );
  }
}
