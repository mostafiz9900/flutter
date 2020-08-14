import 'package:flutter/material.dart';

import 'package:flutter_swiper/flutter_swiper.dart';

class SwipeImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new SwipeImagePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class SwipeImagePage extends StatefulWidget {
  final String title;
  SwipeImagePage({Key key, this.title}) : super(key: key);

  @override
  _SwipeImagePageState createState() => new _SwipeImagePageState();
}

class _SwipeImagePageState extends State<SwipeImagePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Swiper(
        itemBuilder: (BuildContext context, int index) {
          return new Image.network(
            "http://via.placeholder.com/350x150",
            fit: BoxFit.fill,
          );
        },
        itemCount: 5,
        pagination: new SwiperPagination(),
        control: new SwiperControl(),
      ),
    );
  }
}
