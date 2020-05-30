import 'package:flutter/material.dart';

class CardMaterial extends StatelessWidget {
  CardMaterial({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('CardMaterial'),),
      body: ListView(
        children: <Widget>[
          _foodCard(),
          _foodCard(),
          _foodCard(),
          _foodCard(),
          _foodCard(),
          _foodCard(),
        ],
      ),
    );
  }
  Widget _foodCard(){
    return Material(
      elevation: 10,
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image.asset('assets/images/food.jpg'),
            Padding(padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text('CardMaterial',
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold ),),
                  Text('Price \$22',
                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold ),),
                  Text('Sales 22 Items',
                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold ),),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
