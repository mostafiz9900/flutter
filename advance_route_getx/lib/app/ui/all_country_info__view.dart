import 'package:advance_route_getx/app/controller/all_country_info_controller.dart';
import 'package:advance_route_getx/app/data/model/all_country_info.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllCountryInfoView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AllCountryInfoController>(
      init: AllCountryInfoController(),
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: Text('My Page')),
          body: ListView.builder(
            itemCount: _.countryList.length,
              itemBuilder: (context,int index){
                final AllCountryInfo countrys=_.countryList[index];

              return ListTile(
                leading: CircleAvatar(
                  child: Text('${countrys.name[0]}'),
                ),
                title:  Text('${countrys?.name}'),
                subtitle:  Text('${countrys?.capital}'),
                trailing: Text('${countrys?.region}'),

              );

              }
          ),
        );
      }
    );
  }
}
