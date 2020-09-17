import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  PageController _pageController;
  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:  SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: <Widget>[
            ImagesView(),
            Container(color: Colors.red,),
            Container(color: Colors.green,),
            Container(color: Colors.blue,),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
              title: Text('Item One'),
              icon: Icon(Icons.home)
          ),
          BottomNavyBarItem(
              title: Text('Item One'),
              icon: Icon(Icons.apps)
          ),
          BottomNavyBarItem(
              title: Text('Item One'),
              icon: Icon(Icons.chat_bubble)
          ),
          BottomNavyBarItem(
              title: Text('Item One'),
              icon: Icon(Icons.settings)
          ),
        ],
      ),

    );
  }
  
}
class ImagesView extends StatelessWidget {
  ImagesView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Container(
        height: 1500,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: StaggeredGridView.count(
          crossAxisCount: 6,
          mainAxisSpacing: 3.0,
          crossAxisSpacing: 3.0,
          staggeredTiles: [
            StaggeredTile.count(3,2),
            StaggeredTile.count(3,2),
            StaggeredTile.count(2,2),
            StaggeredTile.count(2,2),
            StaggeredTile.count(2,2),

            //  StaggeredTile.count(3, 2),

            // StaggeredTile.count(1, 1),
          ],
          children: <Widget>[
            Container(color: Colors.red,),
            Container(color: Colors.grey,),
            Container(color: Colors.pink,),
            Container(color: Colors.pink,),
          ],
        ),
      );

  }
  Widget myPhotoList(String img) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: NetworkImage(
              img),
        ),
      ),
    );
  }
}
