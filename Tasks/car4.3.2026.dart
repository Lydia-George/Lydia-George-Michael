import 'dart:io';

class Car{
  int? _code;
  String? _color;
  double? _price;
  String? _model;

  Car({ int? code =101 , double? price=2700000, String? model="BMW X5", String? color ='black'} ){
    this._code = code;
    this._color = color;
    this._model = model;
    this._price = price;
  }

  void setCode(int value){
    this._code = value;
  }

  int? getCode (){
    return this._code;
  }

  void setColor(String value){
    this._color = value;
  }

  String? getColor(){
    return this._color;
  }

  void set Model(String value){
    this._model = value;
  }

  String? getModel (){
    return this._model;
  }

  void setPrice(double value){
    this._price = value;
  }

  double? getPrice(){
    return this._price;
  }


  void fillCarInfo(){

    print('Enter Code');
    this._code = int.parse(stdin.readLineSync()!);
    print('Enter Model');
    this._model = stdin.readLineSync()!;
    print('Enter Color');
    this._color = stdin.readLineSync()!;
    print('Enter Price');
    this._price = double.parse(stdin.readLineSync()!);

  }

  void printCarInfo(){
    print('------Car Info ------');
    print('Code : $_code');
    print('Model : $_model');
    print('Color : $_color');
    print('Price : $_price');

  }





}