import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class SharedPref extends StatefulWidget {
  SharedPref({Key key}) : super(key: key);

  @override
  _SharedPrefState createState() {
    return _SharedPrefState();
  }
}

class _SharedPrefState extends State<SharedPref> {
  int _counter = 0;
  _incrementCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
  int _countValue=prefs.getInt('_counter')??0;
  setState(() {
    _counter=_countValue;
  });
  }

  @override
  void initState() {
    super.initState();
    _incrementCounter();
  }
  increment()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _counter++;
      prefs.setInt('_counter', this._counter);
    });
  }
  decrement()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _counter--;
      prefs.setInt('_counter', _counter);
    });
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
        title: Text('Shared Preferences'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('$_counter'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text('-'),
                onPressed: () {
                  decrement();
                },
              ),
              SizedBox(width: 10,),
              RaisedButton(
                child: Text('+'),
                onPressed: () {
                  increment();
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
