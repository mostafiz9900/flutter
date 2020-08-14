import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:global_configuration/global_configuration.dart';
import 'package:http/http.dart';
import 'package:mainflutterapp/models/Order.dart';

class OrderView extends StatefulWidget {
  OrderView({Key key}) : super(key: key);

  @override
  _OrderViewState createState() {
    return _OrderViewState();
  }
}

class _OrderViewState extends State<OrderView> {
  List<Order> orderList=new List();

  @override
  void initState() {
    super.initState();
    _getRequestOrder();
//    print('listenForOrders');
//    print(_getRequest);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Data List View '),),
      body: ListView.builder(
        itemCount: orderList.length,
        itemBuilder: (context, index) => ListTile(
        title: Text(orderList[index].id),
        subtitle: Text(orderList[index].contact_phone),
      ),),
    );
  }
  Future <List<Order>> _getRequestOrder() async {
//    final String _apiToken = 'api_key=teamalamathebest&d_id=usr088aef54628a9028426eb864562823c0';
//    final String url ='${GlobalConfiguration().getString('api_base_url')}deliveryboyorder?${_apiToken}';

    String url="https://eshtri.net/deliveryboyorder?d_id=usr088aef54628a9028426eb864562823c0&api_key=teamalamathebest";
    Response response= await get(url);
    var rb=response.body;
    var list=json.decode(rb) as List;
    List<Order> listValues=list.map((data)=>Order.fromJson(data)).toList();
    setState(() {
      orderList.addAll(listValues);
    });
  }
}