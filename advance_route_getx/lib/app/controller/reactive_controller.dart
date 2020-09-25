import 'package:get/get.dart';
import 'package:meta/meta.dart';

class ReactiveController extends GetxController {
 RxInt count=0.obs;

 RxString currentDate=''.obs;
 RxList<String> list=List<String>().obs;
 RxMap<String,dynamic> mapItem= Map<String,dynamic>().obs;

 increment(){
   count.value++;
 }
 showCurrentDate(){
   this.currentDate.value=DateTime.now().toString();
 }
 addList(){
   list.add(DateTime.now().toString());
 }
 addMapList(){
   final String key=DateTime.now().toString();
   mapItem.add(key,key);
 }
 removeItem(int index){
   list.removeAt(index);
 }
 removeMapList(String key){
   mapItem.remove(key);
 }

}