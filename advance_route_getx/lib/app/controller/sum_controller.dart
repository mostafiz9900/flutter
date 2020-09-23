import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:meta/meta.dart';

class SumController extends GetxController {

  final count1=0.obs;
  final count2=0.obs;
  void increment()=>count1.value++;
  void decrement()=>count1.value--;

  int get sum => count1.value+count2.value;


  @override
  void onInit() {
    GetStorage box=GetStorage();
    if(box.read('count1') !=null){
      count1.value=box.read('count1');
      count2.value=box.read('count2');
    }
   ever(count1, (_)=>print('ever counter'));
   once(count1, (_)=>print('ever counter'));
   debounce(count1, (_)=>print('ever debounce'),time: Duration(seconds: 1));
   interval(count1, (_)=>print('ever interval'),time: Duration(seconds: 3));
  }
}