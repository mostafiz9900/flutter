import 'package:flutter/material.dart';

class AllButtonLayoutPage extends StatefulWidget {
  AllButtonLayoutPage({Key key}) : super(key: key);

  @override
  _AllButtonLayoutPageState createState() {
    return _AllButtonLayoutPageState();
  }
}

class _AllButtonLayoutPageState extends State<AllButtonLayoutPage> {
  int _count = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('All Button'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.plus_one),
        onPressed: () {
          setState(() {
            _count++;
          });
        },
      ),
      body: ListView(
        children: <Widget>[
          Text(
            'Count: ${_count}',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          ),
          RaisedButton(
            child: Text('RaisedButton'),
            elevation: 10,
            onPressed: () {
              setState(() {
                _count++;
              });
            },
          ),
          FlatButton(
            child: Text('Flat Button'),
            onPressed: () {
              setState(() {
                _count++;
              });
            },
          ),
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              setState(() {
                _count++;
              });
            },
          ),
        ],
      ),
    );
  }
}
