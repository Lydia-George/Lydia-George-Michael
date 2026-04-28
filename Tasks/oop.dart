

import 'package:newtask/10.4.2026_Inheritance/rectangle.dart';

import 'circle.dart';

void main(){
  Rectangle r1 = Rectangle(width: 5 , length: 3 , color: 'yellow' , filled: true);
  print(r1.toStringFun());
  print('Area = ${r1.getArea()}');
  print('Perimeter = ${r1.getPerimeter()}');

  print('---------------------------------------');

  Circle c1 =Circle(radius: 2.5 , color: 'Blue' , filled: false);

  print(c1.toStringFun());
  print('Area = ${c1.getArea()}');
  print('Primeter = ${c1.getPerimeter()}');



}