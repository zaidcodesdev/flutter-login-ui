
  import 'dart:io';

   void main(){
   print(" Enter no1");
   int no1 = getValue();

   print(" Enter no2");
   int no2 = getValue();

   int result = add(no1, no2);
   print(" Sum of no1 and no2 is $result");

  }

  int getValue() {
    return int.parse(stdin.readLineSync().toString());
  }

 int add( int a , int b){
     return  a + b;
 }

