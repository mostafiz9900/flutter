import 'package:advance_route_getx/app/controller/user_controller.dart';
import 'package:advance_route_getx/app/controller/user_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class UserDetailsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserDetailsController>(
        init: UserDetailsController(),
        builder: (_) {
          return Scaffold(
            appBar: AppBar(
              title: Text('User Details Page'),
            ),
            body: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (_.user.id == null) CircularProgressIndicator(),
                  Text('${_.user.firstName ?? ''}'),
                  Text('${_.user.lastName}'),
                  Text('${_.user.email}'),
                ],
              ),
            ),
          );
        });
  }
}
