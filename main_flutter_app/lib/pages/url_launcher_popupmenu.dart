import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mainflutterapp/models/customer.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncherPopupMenu extends StatefulWidget {
  UrlLauncherPopupMenu({Key key}) : super(key: key);

  @override
  _UrlLauncherPopupMenuState createState() {
    return _UrlLauncherPopupMenuState();
  }
}

class _UrlLauncherPopupMenuState extends State<UrlLauncherPopupMenu> {
  List customerList = [];

  _loadData() async {
    var jsonString = await rootBundle.loadString('assets/data_2.json');
    customerList = jsonDecode(jsonString);
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
      appBar: AppBar(title: Text('url launcher'),),
      body: Container(
          width: double.infinity,
          child: ListView.builder(
            itemCount: customerList.length != null ? customerList.length : 0,
            itemBuilder: (context, index) {
              Customer customer = Customer.fromJson(customerList[index]);
              return ListTile(
                  leading: CircleAvatar(child: Text(customer.name[0]),),
                  title: Text('${customer.name}'),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('${customer.phone}'),
                      Text('${customer.email}'),
                    ],
                  ),
                  trailing: listPopupMenu(customer),
              );
            },)
      ),
    );
  }

  listPopupMenu(Customer customer) {
    return PopupMenuButton(
      offset: Offset(0, 40),
      elevation: 10,
      onSelected: (val) async{
switch(val){
  case 'call':
    if(await canLaunch("tel:${customer.phone}")){
      await launch("tel:${customer.phone}");
    }
    break;
  case 'website':
    if(await canLaunch("${customer.website}")){
      await launch("${customer.website}");
    }
    break;
  case 'sms':
    if(await canLaunch("sms:${customer.phone}")){
      await launch("sms:${customer.phone}");
    }
    break;
}

      },
        itemBuilder: (BuildContext context) {
          return [
            PopupMenuItem(
                value: 'call',
                child: Row(
                  children: <Widget>[
                    Icon(Icons.add_call),
                    SizedBox(width: 10,),
                    Text('Call')
                  ],
                )
            ),
            PopupMenuItem(
                value: 'website',
                child: Row(
                  children: <Widget>[
                    Icon(Icons.web),
                    SizedBox(width: 10,),
                    Text('Visit Website')
                  ],
                )
            ),
            PopupMenuItem(
                value: 'sms',
                child: Row(
                  children: <Widget>[
                    Icon(Icons.sms),
                    SizedBox(width: 10,),
                    Text('SMS')
                  ],
                )
            ),
          ];
        });
  }


}