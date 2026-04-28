abstract class Shape {
  String? _color;
  bool? _filled;

  Shape({String color = '' , bool filled = false }){
    this._color = color;
    this._filled = filled;
  }

  void setColor (String value){
    this._color=value;
  }

  String? getColor(){
    return this._color;
}

void setFilled(bool value){
    this._filled = value;
}

bool? isFilled(){
    return this._filled;
}

double getArea();
  double getPerimeter();
  String toStringFun();


}