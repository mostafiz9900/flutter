import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShowBottnSheetOpen extends StatefulWidget {
  ShowBottnSheetOpen({Key key}) : super(key: key);

  @override
  _ShowBottnSheetOpenState createState() {
    return _ShowBottnSheetOpenState();
  }
}

class _ShowBottnSheetOpenState extends State<ShowBottnSheetOpen> {
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
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: RaisedButton(
                  child: Text('Click '),
                  onPressed: () {
                  _onBottonSheet();

                },),
              ),
            ),
          ],
        ),
      ),
    );
  }
  void _onBottonSheet(){
    showModalBottomSheet(context: context, builder: (context){
      return Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("data")
          ],
        ),
      );
    });
  }
}