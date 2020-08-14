import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mainflutterapp/models/customer.dart';

class PopupMenuPage extends StatefulWidget {
  PopupMenuPage({Key key}) : super(key: key);

  @override
  _PopupMenuPageState createState() {
    return _PopupMenuPageState();
  }
}

class _PopupMenuPageState extends State<PopupMenuPage> {
  List customers = [];

  _loadData() async {
    var jsonString = await rootBundle.loadString('assets/data_2.json');
    setState(() {
      customers = json.decode(jsonString);
    });
  }

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('PopupMenuPage'),
        actions: <Widget>[
          PopupMenuButton(
            offset: Offset(0, 40),
              elevation: 10,
              itemBuilder: (BuildContext context){
            return [
              PopupMenuItem(
                value: 'rating',
                child: Text('Rating'),
              ),
              PopupMenuItem(
                value: 'website',
                child: Text('Website'),
              ),
              PopupMenuItem(
                value: 'setting',
                child: Text('Setting'),
              )

            ];
          },
            onSelected: (val){
              print(val);
            },
          ),

        ],
      ),
      body: Container(
        width: double.infinity,
        //full container jure thakbe joto tuku baki thakbe
        child: ListView.builder(
            itemCount: customers.length == null ? 0 : customers.length,
            itemBuilder: (BuildContext context, index){
              Customer customer=Customer.fromJson(customers[index]);
              return ListTile(
                leading: CircleAvatar(child: Text(customer.name[0]),),
                title: Text(customer.name),
                subtitle: Text(customer.email),

              );
            }),
      ),
    );
  }
}
