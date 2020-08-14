import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mainflutterapp/pages/AllButtonLayoutPage.dart';
import 'package:mainflutterapp/pages/CardMaterial.dart';
import 'package:mainflutterapp/pages/CustomScrollViewSliver.dart';
import 'package:mainflutterapp/pages/DrawerClass.dart';
import 'package:mainflutterapp/pages/JsonDataView.dart';
import 'package:mainflutterapp/pages/ListView_Titel_Builder_divider.dart';
import 'package:mainflutterapp/pages/LocalJSONFile.dart';
import 'package:mainflutterapp/pages/OrderView.dart';
import 'package:mainflutterapp/pages/Overlapping.dart';
import 'package:mainflutterapp/pages/Page1.dart';
import 'package:mainflutterapp/pages/SharedPref.dart';
import 'package:mainflutterapp/pages/Signature.dart';
import 'package:mainflutterapp/pages/SnackbarAndToast.dart';
import 'package:mainflutterapp/pages/StudentView.dart';
import 'package:mainflutterapp/pages/alert_dialog.dart';
import 'package:mainflutterapp/pages/botton_sheet.dart';
import 'package:mainflutterapp/pages/geolocation_parmittion.dart';
import 'package:mainflutterapp/pages/google_map.dart';
import 'package:mainflutterapp/pages/google_map_3.dart';
import 'package:mainflutterapp/pages/google_map_4.dart';
import 'package:mainflutterapp/pages/map_view.dart';
import 'package:mainflutterapp/pages/maps_autocomplete_address.dart';
import 'package:mainflutterapp/pages/maps_autocomplete_search_2.dart';
import 'package:mainflutterapp/pages/popup-menu.dart';
import 'package:mainflutterapp/pages/show_dialog_view_page.dart';
import 'package:mainflutterapp/pages/swipe_images.dart';
import 'package:mainflutterapp/pages/url_launcher_popupmenu.dart';
import 'package:mainflutterapp/ui/custom_widget.dart';
import 'package:mainflutterapp/ui/fancy_button_container.dart';

void main() {
  runApp(MaterialApp(
    home: Dashboard(),
  ));
}

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        _showExitPopup();
      },
      child: Scaffold(
          appBar: AppBar(
            title: Text('Dashboard'),
          ),
          body: ListView(
            dragStartBehavior: DragStartBehavior.start,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FlatButton(
                    child: Text('Page1'),
                    onPressed: () {
                      Route route =
                          MaterialPageRoute(builder: (context) => Page1());
                      Navigator.push(context, route);
                    },
                  ),
                  FlatButton(
                    child: Text('Overlapping'),
                    onPressed: () {
                      Route route = MaterialPageRoute(
                          builder: (context) => Overlapping());
                      Navigator.push(context, route);
                    },
                  ),
                  FlatButton(
                    child: Text('ListView_Titel_Builder_divider'),
                    onPressed: () {
                      Route route = MaterialPageRoute(
                          builder: (context) =>
                              ListView_Titel_Builder_divider());
                      Navigator.push(context, route);
                    },
                  ),
                  FlatButton(
                    child: Text('DrawerClass'),
                    onPressed: () {
                      Route route = MaterialPageRoute(
                          builder: (context) => DrawerClass());
                      Navigator.push(context, route);
                    },
                  ),
                  FlatButton(
                    child: Text('CardMaterial'),
                    onPressed: () {
                      Route route = MaterialPageRoute(
                          builder: (context) => CardMaterial());
                      Navigator.push(context, route);
                    },
                  ),
                  FlatButton(
                    child: Text('CustomScrollViewSliver'),
                    onPressed: () {
                      Route route = MaterialPageRoute(
                          builder: (context) => CustomScrollViewSliver());
                      Navigator.push(context, route);
                    },
                  ),
                  FlatButton(
                    child: Text('JsonDataView'),
                    onPressed: () {
                      Route route = MaterialPageRoute(
                          builder: (context) => JsonDataView());
                      Navigator.push(context, route);
                    },
                  ),
                  FlatButton(
                    child: Text('Fetch Data Example'),
                    onPressed: () {
                      Route route = MaterialPageRoute(
                          builder: (context) => StudentView());
                      Navigator.push(context, route);
                    },
                  ),
                  FlatButton(
                    child: Text('OrderView'),
                    onPressed: () {
                      Route route =
                          MaterialPageRoute(builder: (context) => OrderView());
                      Navigator.push(context, route);
                    },
                  ),
                  FlatButton(
                    child: Text('AllButtonLayoutPage'),
                    onPressed: () {
                      Route route = MaterialPageRoute(
                          builder: (context) => AllButtonLayoutPage());
                      Navigator.push(context, route);
                    },
                  ),
                  FlatButton(
                    child: Text('SnackbarAndToast'),
                    onPressed: () {
                      Route route = MaterialPageRoute(
                          builder: (context) => SnackbarAndToast());
                      Navigator.push(context, route);
                    },
                  ),
                  FlatButton(
                    child: Text('LocalJSONFile'),
                    onPressed: () {
                      Route route = MaterialPageRoute(
                          builder: (context) => LocalJSONFile());
                      Navigator.push(context, route);
                    },
                  ),
                  FlatButton(
                    child: Text('Shared Preferences'),
                    onPressed: () {
                      Route route =
                          MaterialPageRoute(builder: (context) => SharedPref());
                      Navigator.push(context, route);
                    },
                  ),
                  FlatButton(
                    child: Text('Signature'),
                    onPressed: () {
                      Route route =
                          MaterialPageRoute(builder: (context) => Signature());
                      Navigator.push(context, route);
                    },
                  ),
                  FlatButton(
                    child: Text('PopupMenuPage'),
                    onPressed: () {
                      Route route = MaterialPageRoute(
                          builder: (context) => PopupMenuPage());
                      Navigator.push(context, route);
                    },
                  ),
                  FlatButton(
                    child: Text('UrlLauncherPopupMenu'),
                    onPressed: () {
                      Route route = MaterialPageRoute(
                          builder: (context) => UrlLauncherPopupMenu());
                      Navigator.push(context, route);
                    },
                  ),
                  FlatButton(
                    child: Text('Alert Dialog'),
                    onPressed: () {
                      Route route = MaterialPageRoute(
                          builder: (context) => AlertDialogPage());
                      Navigator.push(context, route);
                    },
                  ),
                  FlatButton(
                    child: Text('SwipeImages'),
                    onPressed: () {
                      Route route = MaterialPageRoute(
                          builder: (context) => SwipeImages());
                      Navigator.push(context, route);
                    },
                  ),
                  FlatButton(
                    child: Text('ShowDialogPage'),
                    onPressed: () {
                      Route route = MaterialPageRoute(
                          builder: (context) => ShowDialogPage());
                      Navigator.push(context, route);
                    },
                  ),
                  FlatButton(
                    child: Text('GoogleMapView'),
                    onPressed: () {
                      Route route = MaterialPageRoute(
                          builder: (context) => GoogleMapView());
                      Navigator.push(context, route);
                    },
                  ),
                  FlatButton(
                    child: Text('Mag Simple'),
                    onPressed: () {
                      Route route = MaterialPageRoute(
                          builder: (context) => MapSample());
                      Navigator.push(context, route);
                    },
                  ),
                  FlatButton(
                    child: Text('Map View 3'),
                    onPressed: () {
                      Route route = MaterialPageRoute(
                          builder: (context) => MapView3());
                      Navigator.push(context, route);
                    },
                  ),
                  FlatButton(
                    child: Text('Map View 4'),
                    onPressed: () {
                      Route route = MaterialPageRoute(
                          builder: (context) => MapView4());
                      Navigator.push(context, route);
                    },
                  ),
                  FlatButton(
                    child: Text('Map View Search address'),
                    onPressed: () {
                      Route route = MaterialPageRoute(
                          builder: (context) => MapPlaceSearch());
                      Navigator.push(context, route);
                    },
                  ),
                  FlatButton(
                    child: Text('MapSearchAuto3'),
                    onPressed: () {
                      Route route = MaterialPageRoute(
                          builder: (context) => MapSearchAuto3());
                      Navigator.push(context, route);
                    },
                  ),
                  FlatButton(
                    child: Text('ShowBottnSheetOpen'),
                    onPressed: () {
                      Route route = MaterialPageRoute(
                          builder: (context) => ShowBottnSheetOpen());
                      Navigator.push(context, route);
                    },
                  ),
                  FlatButton(
                    child: Text('MyMap'),
                    onPressed: () {
                      Route route = MaterialPageRoute(
                          builder: (context) => MyMap());
                      Navigator.push(context, route);
                    },
                  ),
                  FlatButton(
                    child: Text('Fancy Button'),
                    onPressed: () {
                      Route route = MaterialPageRoute(
                          builder: (context) => FancyButtonContainer());
                      Navigator.push(context, route);
                    },
                  ),
                ],
              ),
            ],
          )),
    );
  }

  _showExitPopup() {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Confirm'),
            content: Text('Do you want ?'),
            actions: <Widget>[
              RaisedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('No'),
                color: Theme.of(context).focusColor.withOpacity(0.7),
              ),
              RaisedButton(
                onPressed: () {
                  SystemNavigator.pop();
                },
                child: Text('Ok'),
                color: Theme.of(context).scaffoldBackgroundColor,
              )
            ],
          );
        });
  }
}
