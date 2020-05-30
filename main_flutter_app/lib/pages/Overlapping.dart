import 'package:flutter/material.dart';

class Overlapping extends StatelessWidget {
  Overlapping({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Overlapping'),
      ),
      body: Column(
        children: <Widget>[
          Text('Overlapping'),
          SizedBox(height: 5),
          Stack(
            children: <Widget>[
              Image.asset('assets/images/food.jpg'),
              Positioned(
                bottom: 10,
                left: 10,
                child: Text(
                  'Flutter',
                  style: TextStyle(color: Colors.white, fontSize: 40),
                ),
              )
            ],
          ),
          SizedBox(height: 20),
          Text('Mostafizur Rahman'),
          SizedBox(
            height: 50,
            width: 50,
            child: Container(
              decoration: BoxDecoration(color: Colors.pink),
            ),
          ),
          Text(
            'Flutter',
            style: TextStyle(color: Colors.white, fontSize: 40),
          ),
          SizedBox(height: 20),
          Row(
            children: <Widget>[
              Container(
                height: 50,
                width: 30,
                decoration: BoxDecoration(color: Colors.amber),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 50,
                width: 30,
                decoration: BoxDecoration(color: Colors.amber),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 50,
                width: 30,
                decoration: BoxDecoration(color: Colors.amber),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 50,
                width: 30,
                decoration: BoxDecoration(color: Colors.amber),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 50,
                width: 30,
                decoration: BoxDecoration(color: Colors.amber),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Padding(padding: EdgeInsets.all(5),
          child: Row(
            children: <Widget>[

              Expanded(
                child: Container(
                  height: 50,
                  width: 30,
                  decoration: BoxDecoration(color: Colors.pinkAccent),
                  child: Icon(Icons.accessibility),
                ),
              ),
              _rowCall(),
              Expanded(
                child: Container(
                  height: 50,
                  width: 30,
                  decoration: BoxDecoration(color: Colors.blueAccent),
                  child: Icon(Icons.account_balance),
                ),
              ),
              _rowCall(),
            ],
          ),),

        ],
      ),
    );
  }
}

Widget _rowCall() {
  return Expanded(
    child: Container(
      height: 50,
      width: 30,
      decoration: BoxDecoration(color: Colors.orange),
      child: Icon(Icons.account_circle),
    ),
  );
}
