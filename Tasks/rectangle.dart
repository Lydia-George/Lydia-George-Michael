
import 'package:newtask/10.4.2026_Inheritance/shape.dart';

class Rectangle extends Shape {
  double? _width;
  double? _length;

  Rectangle({
    double width = 0,
    double length = 0,
    String color = '',
    bool filled = false,
  }) : super(color: color, filled: filled) {
    this._width = width;
    this._length = length;
  }

  void setWidth(double value) {
    this._width = value;
  }

  double? getWidth() {
    return this._width;
  }

  void setLength(double value) {
    this._length = value;
  }

  double? getLength() {
    return this._length;
  }

  @override
  double getArea() {
    return (_width ?? 0) * (_length ?? 0);
  }

  @override
  double getPerimeter() {
    return 2 * ((_width ?? 0) + (_length ?? 0));
  }

  @override
  String toStringFun() {
    return 'Rectangle :'
        ' width = $_width ,'
        ' Length = $_length ,'
        ' Color = ${getColor()} ,'
        ' Filled = ${isFilled()}  ';
  }
}
