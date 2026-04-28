import 'dart:math';

import 'package:newtask/10.4.2026_Inheritance/shape.dart';


class Circle extends Shape {
  double? _radius;

  Circle({double radius = 0, String color = '', bool filled = false})
    : super(color: color, filled: filled) {
    this._radius = radius;
  }

  void setRadius(double value) {
    this._radius = value;
  }

  double? getRadius() {
    return this._radius;
  }

  @override
  double getArea() {
    return pi * (_radius??0) * (_radius ??0);
  }

  @override
  double getPerimeter() {
   return 2* pi * (_radius??0);
  }

  @override
  String toStringFun() {
    return 'Circle : '
        'Radius = $_radius ,'
        'Color = ${getColor()} ,'
        'Filled = ${isFilled()}';
  }
}
