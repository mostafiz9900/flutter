


import 'package:getx_pattern_mgt/app/translations/en_US/en_us_translations.dart';
import 'package:getx_pattern_mgt/app/translations/es_MX/es_mx_translations.dart';

abstract class AppTranslation {
  static Map<String, Map<String, String>>
  translations =
  {

    'en_US' : enUs,
    'es_mx' : esMx
  };

}