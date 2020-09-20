import 'package:advance_route_getx/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';

class HomeView extends StatelessWidget {
  HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          fit: BoxFit.cover,
          colorFilter: ColorFilter.linearToSrgbGamma(),
          image: NetworkImage(
              "https://images.pexels.com/photos/3902882/pexels-photo-3902882.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text("Home Page"),
          backgroundColor: Colors.white10,
          elevation: 4,
          centerTitle: true,
        ),
        body: Center(
          child:Column(
            children: [
              RaisedButton(
                child: Text('go to country page'.toUpperCase()),
                onPressed: (){
                  Get.toNamed(Routes.COUNTRY,arguments: 'Get is the best');
                  print(Get.arguments);
                },
              ),
              RaisedButton(
                child: Text('go to Details page'.toUpperCase()),
                onPressed: (){
                  Get.snackbar('Go To Other Page', 'message',
                  snackPosition: SnackPosition.BOTTOM,

                  );
                  Get.toNamed(Routes.DETAILS, id: 123);

                },
              ),
              RaisedButton(
                child: Text(' snackbar'.toUpperCase()),
                onPressed: (){
                  Get.snackbar('Go To Other Page', 'message',
                  snackPosition: SnackPosition.BOTTOM,

                  );
                  // Get.toNamed(Routes.DETAILS);
                },
              ),
              RaisedButton(
                child: Text('go to bottomSheet '.toUpperCase()),
                onPressed: (){
                  Get.bottomSheet(

                      Container(
                        color: Colors.green,
                        child: Wrap(
                          children: <Widget>[
                            ListTile(
                                leading: Icon(Icons.music_note),
                                title: Text('Music'),
                                onTap: () => {}
                            ),
                            ListTile(
                              leading: Icon(Icons.videocam),
                              title: Text('Video'),
                              onTap: () => {},
                            ),
                          ],
                        ),
                      )


                  );
                  // Get.toNamed(Routes.DETAILS);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
