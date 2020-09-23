import 'package:advance_route_getx/app/data/model/all_country_info.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';

class AllCountryInfoController extends GetxController {


  static List<AllCountryInfo> getCountry()=>[
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
        /* currencies: [
                code: "COP",
                name: "Colombian peso",
                symbol: "$"
            ],*/
        /*languages: [

                iso639_1: "es",
                iso639_2: "spa",
                name: "Spanish",
                nativeName: "Español"

            ],*/
        // translations: {
        //   de: "Kolumbien",
        //   es: "Colombia",
        //   fr: "Colombie",
        //   ja: "コロンビア",
        //   it: "Colombia",
        //   br: "Colômbia",
        //   pt: "Colômbia"
        // },
        flag: "https://restcountries.eu/data/col.svg",
        /* regionalBlocs: [

                acronym: "PA",
                "name": "Pacific Alliance",
                "otherAcronyms": [],
                "otherNames": [
                  "Alianza del Pacífico"
                ]
              ,
              {
                "acronym": "USAN",
                "name": "Union of South American Nations",
                "otherAcronyms": [
                  "UNASUR",
                  "UNASUL",
                  "UZAN"
                ],
                otherNames: [
                  "Unión de Naciones Suramericanas",
                  "União de Nações Sul-Americanas",
                  "Unie van Zuid-Amerikaanse Naties",
                  "South American Union"
                ]
              }
            ],*/
        cioc: "COL"

    )
  ];



  final _obj = getCountry.obs;
  set obj(value) => _obj.value = value;
  get obj => _obj.value;



}