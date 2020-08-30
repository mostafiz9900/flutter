import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: QuizApp(),
  ));
}

class QuizApp extends StatefulWidget {
  QuizApp({Key key}) : super(key: key);

  @override
  _QuizAppState createState() {
    return _QuizAppState();
  }
}

class _QuizAppState extends State<QuizApp> {
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
    return Scaffold(
      appBar: AppBar(
        title: Text('True or False'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      backgroundColor: Colors.blueGrey,
      body: Container(
        child: Column(
          children: <Widget>[
            Image.asset(
              "images/bangladesh_flag",
              width: 250,
              height: 180,
            ),
          ],
        ),
      ),
    );
  }
}
