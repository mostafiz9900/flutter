import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mainflutterapp/models/increment_data.dart';
import 'package:mainflutterapp/models/timer_info.dart';
import 'package:mainflutterapp/ui/custom_widget.dart';
import 'package:provider/provider.dart';

class ProviderView extends StatelessWidget {
  ProviderView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (BuildContext context) {
          return TimerInfo();

        }),
        ChangeNotifierProvider(create: (BuildContext context) {
          return IncrementData();

        }),
      ],
      child: MaterialApp(
        home: HomePage(),
      ),
    );
    /* return MaterialApp(
      home: ChangeNotifierProvider(
        create: (context) => TimerInfo(),
          child: HomePage()
      ),
    );*/
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
//  int _initialValue=60;
  @override
  void initState() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      var _timerInfo = Provider.of<TimerInfo>(context, listen: false);
      _timerInfo.updateRemainingTime();
/*setState(() {
  _initialValue--;
});*/
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
var _dataProvider = Provider.of<IncrementData>(context,listen: false);
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
//            Image.asset('assets/stopwatch.png'),
            SizedBox(height: 32),
            Consumer<TimerInfo>(
              builder: (context, value, child) {
                return Text(value.getRemainingTime()?.toString() ?? '',
                    style: TextStyle(fontSize: 72));
              },
              /*   child: Text(_initialValue?.toString() ?? '',
                      style: TextStyle(fontSize: 72)),*/
            ),
            SizedBox(height: 10.0,),
            Consumer<IncrementData>(builder: (context, data, child) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                Text(data.getRemainingCount()?.toString()??'',style: TextStyle(fontSize: 72)),
                  RaisedButton(
                    child: Text("Increment"),
                      onPressed: (){
                        data.updateData();
                      }
                      )
              ],);
            },),
          ],
        ),
      ),
      floatingActionButton:  FancyButton(
              onPressed: () {
                _dataProvider.updateData();
              })
    );
  }
}
