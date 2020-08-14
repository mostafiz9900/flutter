import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SnackbarAndToast extends StatefulWidget {
  SnackbarAndToast({Key key}) : super(key: key);

  @override
  _SnackbarAndToastState createState() {
    return _SnackbarAndToastState();
  }
}

class _SnackbarAndToastState extends State<SnackbarAndToast> {
  int _count = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey=GlobalKey<ScaffoldState>();

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
      key: _scaffoldKey,
      appBar: AppBar(title: Text('SnackbarAndToast'),),
      body: ListView(
        children: <Widget>[
          Text('Count : ${_count}'),
          RaisedButton(
              child: Text("add"),
              onPressed: () {
            setState(() {
//              _showSancbar();
              _showToast();
            _count++;
            });
          })
        ],
      ),
    );
  }

  void _showSancbar() {
    var _mySnackbar=SnackBar(content: Text('Count ${_count}') );
    _scaffoldKey.currentState.showSnackBar(_mySnackbar);
  }
  _showToast(){
    Fluttertoast.showToast(
        msg: "This is Center Short Toast",
     /*   toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0*/
    );
  }

}