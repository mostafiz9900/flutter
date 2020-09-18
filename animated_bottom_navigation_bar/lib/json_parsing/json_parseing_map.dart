import 'dart:convert';

import 'package:animated_bottom_navigation_bar/models/Post.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class JsonParsingMap extends StatefulWidget {
  JsonParsingMap({Key key}) : super(key: key);

  @override
  _JsonParsingMapState createState() {
    return _JsonParsingMapState();
  }
}

class _JsonParsingMapState extends State<JsonParsingMap> {
  Future<PostList> data;
  @override
  void initState() {
    super.initState();

    Network network=Network('https://jsonplaceholder.typicode.com/posts');
    data=network.loadPosts();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      child: FutureBuilder(
        future: data,
          builder: (context, AsyncSnapshot<PostList> snapshot){
            List<Post> allPost;
            if(snapshot.hasData){
              allPost=snapshot.data.posts;
             return createListViewMap(allPost, context);
            }
            return CircularProgressIndicator();
          }
      ),
    );
  }
  Widget createListViewMap(List<Post> data,context){
    return Container(
      child: ListView.builder(
        itemCount: data.length,
          itemBuilder: (context,int indext){
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Divider(height: 3,),
            ListTile(
              title: Text("${data[indext].title}"),
              subtitle: Text('${data[indext].body}'),
              leading: Column(
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: Colors.cyan,
                    radius: 23,
                    child: Text("${data[indext].id}"),
                  )
                ],
              ),
            )
          ],
        );
      }),
    );
  }
}

class Network{
  final String url;

  Network(this.url);
Future <PostList> loadPosts()async{
  final response=await get(Uri.encodeFull(url));
  if(response.statusCode==200){
     return PostList.fromJson(json.decode(response.body));
  }else{
    throw Exception('some thing worring');
  }
}
}