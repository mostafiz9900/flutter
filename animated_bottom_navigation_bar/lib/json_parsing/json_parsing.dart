
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class JsonParsing extends StatefulWidget {
  JsonParsing({Key key}) : super(key: key);

  @override
  _JsonParsingState createState() {
    return _JsonParsingState();
  }
}

class _JsonParsingState extends State<JsonParsing> {
  Future data;
  @override
  void initState() {
    super.initState();
    data=getData();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return
       Container(
         child: FutureBuilder(
           future: getData(),
             builder: (context, AsyncSnapshot snapshot){
             if(snapshot.hasData){
               return createListView(snapshot.data, context);
               // return Text(snapshot.data[0]['title']);
             }
           return CircularProgressIndicator();
             })
       );

  }
  Future getData(){
    var data;
    String url="https://jsonplaceholder.typicode.com/posts";
    data=Network(url).fetchData();
    print(data);

    return data;
  }

  Widget createListView(List data, BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context,index){
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Divider(height: 3,),
                ListTile(
                  title: Text(data[index]['title']),
                  subtitle: Text("${data[index]["body"]}"),
                  leading: Column(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.cyan,
                        radius: 23,
                        child: Text("${data[index]["id"]}"),
                      )
                    ],
                  ),
                ),

              ],
            );
          }),
    );
  }
}
class Network{
  final String url;

  Network(this.url);

  Future fetchData()async{
    print("$url");
    Response response=await get(Uri.encodeFull(url));
    if(response.statusCode==200){
    //  ok
      return json.decode(response.body);
    }else{
      print(response.statusCode);
    }

  }
}