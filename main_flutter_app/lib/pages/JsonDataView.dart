import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:mainflutterapp/models/User.dart';

class JsonDataView extends StatefulWidget {
  JsonDataView({Key key}) : super(key: key);

  @override
  _JsonDataViewState createState() {
    return _JsonDataViewState();
  }
}

class _JsonDataViewState extends State<JsonDataView> {
  List <User> userlist=new List();
  @override
  void initState() {
     _getRequest();
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
      appBar: AppBar(title: Text("Json Data View"),),
      body: ListView.builder(
        itemCount: userlist.length,
        itemBuilder: (context, index){
          return ListTile(
            title: Text(userlist[index].title),
            subtitle: Text(userlist[index].body),
            onTap: (){
              print(userlist[index]);
            },
          );
        },
      ),
    );
  }

  Future <List<User>> _getRequest() async {
    String url="http://jsonplaceholder.typicode.com/posts";
    Response response= await get(url);
    var rb=response.body;
    var list=json.decode(rb) as List;
    List<User> listValues=list.map((e)=>User.fromJson(e)).toList();
    setState(() {
      userlist.addAll(listValues);
    });
  }
}