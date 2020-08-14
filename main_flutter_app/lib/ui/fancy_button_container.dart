import 'package:flutter/material.dart';
import 'package:mainflutterapp/ui/common/dialog/success_dialog.dart';
import 'package:mainflutterapp/ui/custom_widget.dart';

class FancyButtonContainer extends StatefulWidget {
  FancyButtonContainer({Key key}) : super(key: key);

  @override
  _FancyButtonContainerState createState() {
    return _FancyButtonContainerState();
  }
}


class _FancyButtonContainerState extends State<FancyButtonContainer> {
  int _count=0;
  void _increment(){
    setState(() {
      _count++;
    });
  }
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
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(child: Text(_count.toString())),
            Center(
              child: Person(
                name: Text('Mostafiz'),
                lastName: "Rahman",
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FancyButton(
        onPressed: () {
          _increment();
          showDialog<dynamic>(
              context: context,
              builder: (BuildContext context) {
                return SuccessDialog(
                  message:
                      'checkout__couponcode_add_dialog_message',
                );
              });
        },
      ),
    );
  }
}
class Person extends StatelessWidget{
  Person({this.name,this.lastName});
  Widget name;
  String lastName;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        name,
        Text("$lastName")
      ],),
    );
  }
}