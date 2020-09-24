import 'package:advance_route_getx/app/controller/home_controller.dart';
import 'package:advance_route_getx/app/routes/app_pages.dart';
import 'package:date_range_form_field/date_range_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:getwidget/components/drawer/gf_drawer.dart';
import 'package:getwidget/components/drawer/gf_drawer_header.dart';

class HomeView extends StatefulWidget {
  HomeView({Key key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}
DateTimeRange myDateRange;
void _submitForm() {
  // final FormState form = myFormKey.currentState;
  // form.save();
}
class _HomeViewState extends State<HomeView> {
  final TextEditingController emailController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: HomeController(),
        builder: (_)=>Container(
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
              title: Text("title".trArgs(['home'])),
              backgroundColor: Colors.white10,
              elevation: 4,
              centerTitle: true,

            ),
            drawer: GFDrawer(

              backgroundImage:NetworkImage('https://www.xda-developers.com/files/2018/02/Flutter-Framework-Feature-Image-Pink.png') ,
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  GFDrawerHeader(
                    currentAccountPicture: GFAvatar(
                      radius: 80.0,
                      backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg"),
                    ),
                    otherAccountsPictures: <Widget>[
                      Image(
                        image: NetworkImage("https://cdn.pixabay.com/photo/2019/12/20/00/03/road-4707345_960_720.jpg"),
                        fit: BoxFit.cover,
                      ),
                      GFAvatar(
                        child: Text("ab"),
                      )
                    ],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('user name'),
                        Text('user@userid.com'),
                      ],
                    ),
                  ),
                  ListTile(
                    title: Text('theme'.tr),
                    onTap: (){
                      if(Get.isDarkMode){
                        Get.changeTheme(ThemeData.light());
                      }else{
                        Get.changeTheme(ThemeData.dark());
                      }
                    },
                  ),
                  ListTile(
                    title: Text('english'.tr),
                    onTap: (){
                      Get.updateLocale(Locale('en'));
                    },
                  ),
                  ListTile(
                    title: Text('English Us'),
                    onTap: (){
                      Get.updateLocale(Locale('en','US'));
                    },
                  ),
                  ListTile(
                    title: Text('arabic'.tr),
                    onTap: (){
                      Get.updateLocale(Locale('ar'));
                    },
                  ),
                  ListTile(
                    title: Text('bangla'.tr),
                    onTap: (){
                      Get.updateLocale(Locale('bn'));
                    },
                  ),
                ],
              ),
            ),
            body: SingleChildScrollView(
              child: Center(
                child:Column(
                  children: [
                    RaisedButton(
                      child: Text('change theme'.toUpperCase()),
                      onPressed: (){
                        if(Get.isDarkMode){
                          Get.changeTheme(ThemeData.light());
                        }else{
                          Get.changeTheme(ThemeData.dark());
                        }
                        print('height=='+Get.height.toString());
                        print('width=='+Get.width.toString());
                        print('android=='+GetPlatform.isAndroid.toString());
                        print('isIOS=='+GetPlatform.isIOS.toString());
                        print('isFuchsia=='+GetPlatform.isFuchsia.toString());
                      },
                    ),
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
                      child: Text('update locale en'.toUpperCase()),
                      onPressed: (){
                        Get.updateLocale(Locale('en'));                  },
                    ),
                    RaisedButton(
                      child: Text('update locale ar'.toUpperCase()),
                      onPressed: (){
                        Get.updateLocale(Locale('ar'));                  },
                    ),
                    RaisedButton(
                      child: Text('update locale bn'.toUpperCase()),
                      onPressed: (){
                        Get.updateLocale(Locale('bn'));                  },
                    ),
                    RaisedButton(
                      child: Text('update us'.toUpperCase()),
                      onPressed: (){
                        Get.updateLocale(Locale('en','US'));                  },
                    ),
                    RaisedButton(
                      child: Text('update pt'.toUpperCase()),
                      onPressed: (){
                        Get.updateLocale(Locale('pt'));                  },
                    ),
                    RaisedButton(
                      child: Text('update pr'.toUpperCase()),
                      onPressed: (){
                        Get.updateLocale(Locale('pt','BR'));                  },
                    ),
                    TextField(
                      controller: emailController,
                    ),

                    RaisedButton(
                      child: Text(' email validation'.toUpperCase()),
                      onPressed: (){
                        if(GetUtils.isEmail(emailController.text)){
                          Get.snackbar('email is correct ', 'is ok',
                            snackPosition: SnackPosition.BOTTOM, );
                        }else{
                          Get.snackbar('email bad formet ', 'is not ok',
                            snackPosition: SnackPosition.BOTTOM, );
                        }



                        // Get.toNamed(Routes.DETAILS);
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
                    RaisedButton(
                      child: Text(' go to count  page'.toUpperCase()),
                      onPressed: (){
                        Get.toNamed(Routes.COUNTS);
                        // Get.toNamed(Routes.DETAILS);
                      },
                    ),
                    RaisedButton(
                      child: Text(' go to block  page'.toUpperCase()),
                      onPressed: (){
                        Get.toNamed(Routes.BLOCk);
                        // Get.toNamed(Routes.DETAILS);
                      },
                    ),
                    RaisedButton(
                      child: Text(' go to student  page'.toUpperCase()),
                      onPressed: (){
                        Get.toNamed(Routes.STUDENT);
                        // Get.toNamed(Routes.DETAILS);
                      },
                    ),
                    RaisedButton(
                      child: Text(' go to Summm  page'.toUpperCase()),
                      onPressed: (){
                        Get.toNamed(Routes.SUM_PAGE);
                        // Get.toNamed(Routes.DETAILS);
                      },
                    ),
                    RaisedButton(
                      child: Text('user list page'.toUpperCase()),
                      onPressed: (){
                        Get.toNamed(Routes.USER_VIEW);
                        // Get.toNamed(Routes.DETAILS);
                      },
                    ),
                    RaisedButton(
                      child: Text('product list page'.toUpperCase()),
                      onPressed: (){
                        Get.toNamed(Routes.PRODUCT);
                        // Get.toNamed(Routes.DETAILS);
                      },
                    ),
                    DateRangeField(
                        context: context,
                        decoration: InputDecoration(
                          labelText: 'Date Range',
                          prefixIcon: Icon(Icons.date_range),
                          hintText: 'Please select a start and end date',
                          border: OutlineInputBorder(),
                        ),
                        initialValue: DateTimeRange(
                            start: DateTime.now(), end: DateTime.now()),
                        validator: (value) {
                          if (value.start.isBefore(DateTime.now())) {
                            return 'Please enter a valid date';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          setState(() {
                            myDateRange = value;

                          });
                        }),
                    FlatButton(
                        child: Text('Submit'),
                        onPressed:(){
                          // _submitForm,
                          print(myDateRange);
                          print('myDateRange');
                        }
                    ),
                    if(myDateRange != null) Text("Saved value is: ${myDateRange.toString()}")
                  ],
                ),
              ),
            ),
          ),
        )
    );
  }
}
