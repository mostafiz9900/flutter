import 'package:get/get.dart';

class MyTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en': {
      'title': 'Hello World %s',
      'theme': 'Theme Change',
    },
    'en_US': {
      'title': 'Hello World from US',
      'theme': 'Theme Change us',
    },
    'pt': {
      'title': 'Olá de Portugal',
      'theme': 'Theme Change pt',
    },
    'pt_BR': {
      'title': 'Olá do Brasil',
      'theme': 'Theme Change brasil',
    },
  };
}