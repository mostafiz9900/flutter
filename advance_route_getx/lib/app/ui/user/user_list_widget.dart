import 'package:advance_route_getx/app/controller/user_controller.dart';
import 'package:advance_route_getx/app/models/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  GetBuilder<UserController>(
        id: 'users',
        init: UserController(),
        builder: (_) {
          if(_.isLoading){
            return Center(child: LinearProgressIndicator());
          }
          return ListView.builder(
              itemCount: _.userList.length,
              itemBuilder: (BuildContext context,int index){
                final User user=_.userList[index];
                return ListTile(
                  title: Text("${user.firstName}"),
                  subtitle: Text("${user.email}"),
                  onTap: () => _.userDetails(user),
                );
              });
        });
  }
}
