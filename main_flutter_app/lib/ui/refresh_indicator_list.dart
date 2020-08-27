import 'package:flutter/material.dart';


class RefreshIndicatorListView extends StatefulWidget {
  RefreshIndicatorListView({Key key}) : super(key: key);

  @override
  _RefreshIndicatorListViewState createState() {
    return _RefreshIndicatorListViewState();
  }
}

class _RefreshIndicatorListViewState extends State<RefreshIndicatorListView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
          child: ListView(
        children:_getItems(),
      ), onRefresh: _handleRefresh
      ),
    );
  }

  List<Widget> _getItems() {
    var items = <Widget>[];
    for (int i = _count; i < _count + 4; i++) {
      var item = new Column(
        children: <Widget>[
          new ListTile(
            title: new Text("Item $i"),
          ),
          new Divider(
            height: 2.0,
          )
        ],
      );

      items.add(item);
    }
    return items;
  }

  Future<Null> _handleRefresh() async {
    await new Future.delayed(new Duration(seconds: 3));

    setState(() {
      _count += 5;
    });

    return null;
  }
}

