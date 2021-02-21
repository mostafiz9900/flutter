import 'package:flutter/material.dart';
import 'package:getx_apps2/app/controllers/lang_controller.dart';
import 'package:get/get.dart';
import 'package:getx_apps2/app/ui/widget/rimage_menu_item.dart';

class LanguageWidget extends StatelessWidget {
  LangController  ctrl = Get.put(LangController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            IconButton(
              icon: Icon(Icons.settings),
              iconSize: 30.0,
              color: Colors.white,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            Text('LANG1'.tr,
                style: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
          ],
        ),
      ),
      body: Column(
        children: [
          Obx(() {
            Color bc = Colors.grey[200];
            if (ctrl.loacelVal.value == 'ar_SA') {
              bc = Theme.of(context).primaryColorDark;
            }
            return RImageMenuItem(
                imageUrl: 'assets/images/ar.png',
                title: 'arabic'.tr,
                borderColor: bc,
                onTap: () {
                  ctrl.chaneLang('ar', 'SA');
                  //Get.updateLocale(Locale('it', 'IT'));
                });
          }),
          Obx(() {
            Color bc = Colors.grey[200];
            if (ctrl.loacelVal.value == 'en_UK') {
              bc = Theme.of(context).primaryColorDark;
            }
            return RImageMenuItem(
                imageUrl: 'assets/images/uk.jpg',
                title: 'english'.tr,
                borderColor: bc,
                onTap: () {
                  ctrl.chaneLang('en', 'UK');
                  //Get.updateLocale(Locale('en', 'US'));
                });
          }),
        ],
      ),
    );
  }
}
