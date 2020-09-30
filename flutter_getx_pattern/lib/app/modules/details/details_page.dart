import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_pattern/app/data/model/movie.dart';
import 'package:flutter_getx_pattern/app/modules/details/details_controller.dart';
import 'package:flutter_getx_pattern/app/utils/constants.dart';
import 'package:get/get.dart';

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DetailsController>(
      init: DetailsController(),
      builder: (_) => Scaffold(
        appBar: AppBar(title: Text('Movie Page'),
          actions: [
            IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: _.logOut,
            )
          ],
        ),
        body: Container(
          child: ListView.builder(
            itemCount: _.movieList.length,
              itemBuilder:(BuildContext context, int index){
              final Movie movie=_.movieList[index];
              return ListTile(
                leading: Image.network("${Constants.THE_MOVIE_DB_IMG_PATH}${movie.posterPath}"),
                title: Text("${movie.title}"),
                subtitle: Text("${movie.overview}"),

              );
              }
          ),
        ),
      ),
    );
  }
}
