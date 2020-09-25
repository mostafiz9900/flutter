import 'dart:convert';

import 'package:advance_route_getx/app/data/model/all_country_info.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';

class AllCountryInfoController extends GetxController {
  List<AllCountryInfo> _allCountryInfoList=[];
  List<AllCountryInfo> get countryList => _allCountryInfoList;

 /* static List<AllCountryInfo> getCountry()=>[
    AllCountryInfo(
        name: "Colombia",
        topLevelDomain: [
          ".co"
        ],
        alpha2Code: "CO",
        alpha3Code: "COL",
        callingCodes: [
          "57"
        ],
        capital: "Bogotá",
        altSpellings: [
          "CO",
          "Republic of Colombia",
          "República de Colombia"
        ],
        region: "Americas",
        subregion: "South America",
        population: 48759958,
        latlng: [
          4,
          -72
        ],
        demonym: "Colombian",
        area: 1141748,
        gini: 55.9,
        timezones: [
          "UTC-05:00"
        ],
        borders: [
          "BRA",
          "ECU",
          "PAN",
          "PER",
          "VEN"
        ],
        nativeName: "Colombia",
        numericCode: "170",


        flag: "https://restcountries.eu/data/col.svg",

        cioc: "COL"

    )
  ];
*/

@override
  void onInit() {
    super.onInit();
    loadCountry();
  }


 Future<void> loadCountry()async{
   final String countrys=await rootBundle.loadString('assets/country.json');

   this._allCountryInfoList = (jsonDecode(countrys) as List).map((e) => AllCountryInfo.fromJson(e)).toList();
   update(['countrys']);
  }




}