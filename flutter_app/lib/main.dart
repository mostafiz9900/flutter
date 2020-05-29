import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'My App',
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  final _longText='I/Timeline(22010): Timeline: Activity_idle id: android.os.BinderProxy@74bc54a time:43448777Reloaded 1 of 495 libraries in 2,395ms.';
  final _sortText='Mostafiz';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        /*body: Container(
          padding: EdgeInsets.all(15.0),
          margin: EdgeInsets.only(left: 10,top: 10),
          height: 50,
          width: 60,
          */ /*foregroundDecoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTpW9yqavcY6PXSiykKLSAnQGm1jN9C0rXhRwAaHMf48JuinVs9&usqp=CAU')
            )
          ),*/ /*
          decoration: BoxDecoration(
            color: Colors.pink,
            borderRadius: BorderRadius.circular(10)
          ),

              child: Text(
            'Hello Flutter',
            style: TextStyle(color: Colors.white),
          )

        ));*/
        body:Column(
          children: <Widget>[
            Image.asset("assets/images/food.jpg"),
            Container(
             child: Text(_longText),
             padding: EdgeInsets.all(10),
            ) ,
            
            Row(
              children: <Widget>[
                Container(
                    padding: EdgeInsets.all(15.0),
                    margin: EdgeInsets.only(left: 10, top: 10),
                    height: 50,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(Icons.accessibility)),
                Container(
                    padding: EdgeInsets.all(15.0),
                    margin: EdgeInsets.only(left: 10, top: 10),
                    height: 50,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      'Hello Flutter',
                      style: TextStyle(color: Colors.white),
                    )),
                Container(
                    padding: EdgeInsets.all(15.0),
                    margin: EdgeInsets.only(left: 10, top: 10),
                    height: 50,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      'Hello Flutter',
                      style: TextStyle(color: Colors.white),
                    )),
                Column(
                  children: <Widget>[
                    Text('')
                  ],
                )
              ],
            )
          ],
        )
    );
  }
}
