import 'package:flutter/material.dart';
import 'package:quiz_app/model/question.dart';

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
  List questionBank=[
    Question.name("What is the national language of Bangladesh? Bangla or Bengali", true),
    Question.name("What is the national language of Bangladesh? Bangla or Bengali", true),
    Question.name("What is the national language of Bangladesh? Bangla or Bengali", true),
    Question.name("What is the national language of Bangladesh? Bangla or Bengali", true),
    Question.name("What is the national language of Bangladesh? Bangla or Bengali", false),
    Question.name("What is the national language of Bangladesh? Bangla or Bengali", true)
  ];
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
        title: Text('True Citizen'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      backgroundColor: Colors.blueGrey,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Image.asset(
                  "assets/images/bangladesh_flag.jpg",
                  width: 250,
                  height: 180,
                ),
              ),
              Container(
                height: 120,
                child: Text(questionBank[0].questionText),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
