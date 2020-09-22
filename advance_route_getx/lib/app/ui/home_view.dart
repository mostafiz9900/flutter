import 'package:advance_route_getx/app/routes/app_pages.dart';
import 'package:date_range_form_field/date_range_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';

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
    );
  }
}
