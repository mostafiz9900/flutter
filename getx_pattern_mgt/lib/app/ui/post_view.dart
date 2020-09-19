import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_mgt/app/controller/post_controller.dart';
import 'package:getx_pattern_mgt/app/data/provider/post_provider.dart';
import 'package:getx_pattern_mgt/app/data/repository/post_repository.dart';
import 'package:http/http.dart' as http;
class PostView extends StatelessWidget {
  final PostRepository repo=PostRepository(apiClient: PostApiClient(httpClient:null ));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Page')),
      body: Container(
        child: GetX<PostController>(
            init: PostController(repository: repo),
            builder: (_) {
              return Container();
            }),
      ),
    );
  }
}
