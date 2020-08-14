import 'package:flutter/material.dart';

class AlertDialogPage extends StatefulWidget {
  AlertDialogPage({Key key}) : super(key: key);

  @override
  _AlertDialogPageState createState() {
    return _AlertDialogPageState();
  }
}

class _AlertDialogPageState extends State<AlertDialogPage> {
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
        title: Text('Alert Dialog'),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
              child: Text("Show Dialog"),
              onPressed: () {
                _showDialog(context);
                print('Show Dialog');
              })
        ],
      ),
    );
  }

  _showDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context){
          return AlertDialog(
            title: Text('Confirm'),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text('Are you sure?'),
                ],
              ),
            ),
            actions: <Widget>[
              RaisedButton(
                  child: Text("Ok"),
                  color: Colors.blueAccent,
                  onPressed: () {
                    Navigator.of(context).pop();
                    print('Ok');
                  }),
              RaisedButton(
                  child: Text("No"),
                  color: Colors.pinkAccent,
                  onPressed: () {
                    Navigator.of(context).pop();
                    print('No');
                  })
            ],
          );
        });
  }
}
