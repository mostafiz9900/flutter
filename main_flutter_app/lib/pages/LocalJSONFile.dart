import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:async';
import 'dart:convert';

class LocalJSONFile extends StatefulWidget {
  LocalJSONFile({Key key}) : super(key: key);

  @override
  _LocalJSONFileState createState() {
    return _LocalJSONFileState();
  }
}

class _LocalJSONFileState extends State<LocalJSONFile> {
  List _data;
  List unfilterDat;

  Future<String> localJsonData() async {
    var jsonText = await rootBundle.loadString('assets/data.json');
    setState(() {
      _data = json.decode(jsonText);
    });
    this.unfilterDat = _data;
    print(jsonText);
    return 'success';
  }

  @override
  void initState() {
    super.initState();
    this.localJsonData();
  }

  searchData(str) {
    var strExist = str.length > 0 ? true : false;
    if (strExist) {
      var filterData = [];
      for (var i = 0; i < unfilterDat.length; i++) {
        String names = unfilterDat[i]['name'].toUpperCase();
        if (names.contains(str.toUpperCase())) {
          filterData.add(unfilterDat[i]);
        }
      }
      setState(() {
        _data = filterData;
      });
    } else {
      setState(() {
        this._data = this.unfilterDat;
      });
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print(_data.length);
    return Scaffold(
      appBar: AppBar(
        title: Text('Local Json'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(hintText: "Search Data"),
              onChanged: (String str) {
                print(str);
                this.searchData(str);
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _data.length,
              itemBuilder: (context, index) {
                return Column(
                  children: <Widget>[
                    ListTile(
                       leading: CircleAvatar(
                        child: Text(_data[index]["name"][0]),
                      ),
                      title: Text(_data[index]['name']),
                      subtitle: Text(_data[index]['email']),
                    )
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
