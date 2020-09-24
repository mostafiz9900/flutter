import 'package:get/get.dart';

class MyTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en': {
      'title': 'Hello World %s',
      'theme': 'Theme Change',
      'bangla': 'Bangla',
      'arabic': 'Arabic',
      'english': 'English',
    },
    'ar': {
      'title': 'مرحبا بالعالم',
      'theme': 'تغيير الموضوع',
      'bangla': 'البنغالية',
      'arabic': 'عربى',
      'english': 'الإنجليزية',
    },
    'bn': {
      'title': 'ওহে বিশ্ব',
      'theme': 'থিম পরিবর্তন',
      'bangla': 'বাংলা',
      'arabic': 'আরবি',
      'english': 'ইংরেজি',
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