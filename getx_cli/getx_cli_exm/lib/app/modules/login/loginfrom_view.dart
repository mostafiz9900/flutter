import 'package:flutter/material.dart';
import 'package:get/get.dart'; 

class LoginfromView extends GetView {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('LoginfromView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'LoginfromView is working', 
          style: TextStyle(fontSize:20),
        ),
      ),
    );
  }
}
  