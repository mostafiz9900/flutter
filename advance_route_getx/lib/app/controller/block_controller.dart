import 'package:get/get.dart';
import 'package:meta/meta.dart';

class BlockController extends GetxController {
   int counter = 0;
  void  increment() {
    counter++;
    update(); // use update() to update counter variable on UI when increment be called
  }
  void  decrement (){
    counter--;
    update(); // use update() to update counter variable on UI when increment be called
  }
  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
   @override
   void onClose() {

     super.onClose();
   }
  // final _obj = ''.obs;
  // set obj(value) => _obj.value = value;
  // get obj => _obj.value;
}