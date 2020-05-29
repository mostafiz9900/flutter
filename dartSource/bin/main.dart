import 'dart:collection';

void main() {
/* for(var i=0; i<=10;i++){
   if(i==5){
  continue;
}
print("${i} name");

 }
 var j=0;
 while(j<10){
   print(j);
   j++;
 }
 var k=0;
 do{
   print(k);
   k++;
 }while(k<10);
 */
//fixed list
var myList=new List(3);
myList[0]="mostafiz";
myList[1]="farzana";
myList[2]="sofiq";
print(myList);

//growable list
/*var gList=new List();
gList.add("mostafiz");
gList.add("farzana");
gList.add("momo");
gList.add("boby");
gList.add("labony");
print(gList);
*/
var setList=new Set.from([100,200,300,500,500]);
var setValue;
for(setValue in setList){
  print(setValue);
}
HashMap map=new HashMap();
map['name']="mostafia";
map['age']="50";
print(map);
}