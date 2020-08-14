import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FancyButton extends StatelessWidget {
  FancyButton({@required this.onPressed});
   GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 8.0,
            horizontal: 20.0,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              RotatedBox(
                quarterTurns: 1,
                child: Icon(Icons.explore,
                color: Colors.amber,),
              ),
              SizedBox(width: 10.0,),
              Text("FANCY BUTTON",style: TextStyle(color: Colors.white),),
            ],
          ),
        ),
      fillColor: Colors.deepOrange,
      splashColor: Colors.green,
      onPressed: onPressed,
      shape: StadiumBorder(),
    );
  }
}
