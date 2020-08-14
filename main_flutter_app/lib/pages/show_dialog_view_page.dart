import 'package:flutter/material.dart';


class ShowDialogPage extends StatefulWidget {
  ShowDialogPage({Key key}) : super(key: key);

  @override
  _ShowDialogPageState createState() {
    return _ShowDialogPageState();
  }
}

class _ShowDialogPageState extends State<ShowDialogPage> {
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
      appBar: AppBar(title: Text('show dialog'),),
      body: Column(
        children: <Widget>[
          RaisedButton(
              child: Text('Click'),
              onPressed: (){


              })
        ],
      ),
    );
  }

}



/*Fluttertoast.showToast(
          msg:
              Utils.getString(context, 'product_detail__success_add_to_basket'),
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIos: 1,
          backgroundColor: PsColors.mainColor,
          textColor: PsColors.white);*/
/*
await showDialog<dynamic>(
context: context,
builder: (BuildContext context) {
return SuccessDialog(
message: Utils.getString(
context, 'product_detail__success_add_to_basket'),
);
});*/
