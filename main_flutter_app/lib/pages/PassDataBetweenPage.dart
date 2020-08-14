import 'package:flutter/material.dart';

class PassDataBetweenPage extends StatefulWidget {
  var _data;
  PassDataBetweenPage(this._data);

//  PassDataBetweenPage({Key key}) : super(key: key);

  @override
  _PassDataBetweenPageState createState() {
    return _PassDataBetweenPageState(this._data);
  }
}

class _PassDataBetweenPageState extends State<PassDataBetweenPage> {
  var data;
  _PassDataBetweenPageState(this.data);

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
      appBar: AppBar(title: Text("pass data"),),
      body: Column(
        children: <Widget>[
          Text(data['name']),
          Text(data['email'])
//          Text(data)
        ],
      ),
    );
  }
}