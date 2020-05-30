import 'package:flutter/material.dart';

class ListView_Titel_Builder_divider extends StatelessWidget {
  String _longText =
      "A paragraph is a series of related sentences developing a central idea, called the topic. Try to think about paragraphs in terms of thematic unity: a paragraph is a sentence or a group of sentences that supports one central, unified idea. Paragraphs add one idea at a time to your broader argument.";
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

  ListView_Titel_Builder_divider({Key key}) : super(key: key);

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
                  leading: CircleAvatar(
                    child: Text(_people[index]["name"][0]),
                  ),
                  title: Text(_people[index]["name"]),
                  subtitle: Text(_people[index]["email"]),
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

  Widget _cell() {
    return Row(
      children: <Widget>[
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(color: Colors.teal),
          child: Icon(
            Icons.lightbulb_outline,
            color: Colors.white,
          ),
        ),
        SizedBox(
          width: 10,
        )
      ],
    );
  }
}
