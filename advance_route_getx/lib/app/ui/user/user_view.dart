import 'package:advance_route_getx/app/controller/user_controller.dart';
import 'package:advance_route_getx/app/ui/user/user_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserController>(
          init: UserController(),
          builder: (_) {
            return Scaffold(
              appBar: AppBar(title: Text('User List'),),
              body: UserListWidget(),

            );
          });

  }
}
