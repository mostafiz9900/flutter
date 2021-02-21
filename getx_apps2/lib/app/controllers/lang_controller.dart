import 'package:flutter/material.dart';
import 'package:get/get.dart';


class LangController extends GetxController {
  var loacelVal = ''.obs;

  @override
  void onInit() {
    // UserService.sing().firstUser().then((user) {
    //   loacelVal.value = user.locale;
    // });
  }

  Future<void> chaneLang(String l1, String l2) async {
    Get.updateLocale(Locale(l1, l2));

    String lang = l1 + '_' + l2;
    loacelVal.value = lang;
    // UserService.sing().firstUser().then((user) {
    //   String lang = l1 + '_' + l2;
    //   user.locale = lang;
    //   UserService.sing().updateUser(user);
    //   loacelVal.value = user.locale;
    // });
  }
}
