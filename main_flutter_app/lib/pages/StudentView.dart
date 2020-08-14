import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mainflutterapp/models/Student.dart';
import 'package:http/http.dart' as http;

class StudentView extends StatefulWidget {
  StudentView({Key key}) : super(key: key);

  @override
  _StudentViewState createState() {
    return _StudentViewState();
  }
}

class _StudentViewState extends State<StudentView> {
//  List<Student> studentList=new List();
  Future<Student> futureStudent;
  @override
  void initState() {
    super.initState();
    futureStudent=fetchStudent();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
    appBar: AppBar(
    title: Text('Fetch Data Example'),
    ),
    body: Center(
    child: FutureBuilder<Student>(
    future: futureStudent,
    builder: (context, snapshot) {
    if (snapshot.hasData) {
    return Text(snapshot.data.title);
    } else if (snapshot.hasError) {
    return Text("${snapshot.error}");
    }

    // By default, show a loading spinner.
    return CircularProgressIndicator();
    },
    ),
    ),
    );

  }
  Future<Student> fetchStudent() async {
    final response =
    await http.get('https://jsonplaceholder.typicode.com/albums/1');

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return Student.fromJson(json.decode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }
}