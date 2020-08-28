import 'package:flutter/material.dart';
import 'package:flutter_tip_calculator/util/hexcolor.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BillSplitter(),
  ));
}

class BillSplitter extends StatefulWidget {
  BillSplitter({Key key}) : super(key: key);

  @override
  _BillSplitterState createState() {
    return _BillSplitterState();
  }
}

class _BillSplitterState extends State<BillSplitter> {
  int _tipPerson = 0;
  int _personCount = 0;
  double _billAmount = 0;
  Color _purple=HexColor("#6908D6");

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: Colors.white,
        child: ListView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.all(20),
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.1,
              ),
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  color:_purple.withOpacity(0.1),// Colors.purpleAccent,
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Total Per Person'),
                    Text('\$12200'),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(
                    color: Colors.blueGrey, style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                children: <Widget>[
                  TextField(
                    keyboardType:
                        TextInputType.numberWithOptions(decimal: true),
                    style: TextStyle(color:_purple),
                    decoration: InputDecoration(
                        prefixText: "Bill Amount",
                        prefixIcon: Icon(Icons.add_circle)),
                    onChanged: (String value) {
                      try {
                        _billAmount = double.parse(value);
                      } catch (exception) {
                        _billAmount=0.0;
                      }
                    },
                  ),

                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Tip',style: TextStyle(color: Colors.grey.shade700),),
                Text("\$34")

              ],)

          ],
        ),
      ),
    );
  }
}
