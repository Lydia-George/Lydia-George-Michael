import 'dart:io';

import 'car4.3.2026.dart';

void main() {
  List<Car> cars = [];

  print('Enter Number of Cars');
  int carsNum = int.parse(stdin.readLineSync()!);

  while (carsNum < 3) {
    print('Please Enter 3 Cars at Least');
    carsNum = int.parse(stdin.readLineSync()!);
  }
  for (int i = 0; i < carsNum; i ++) {


    print('Enter  Car ${i + 1} Info');
    Car car =Car();

    car.fillCarInfo();

    cars.add(car);


    }
  print('\n------ All Cars Info ------\n');

  for (var car in cars) {
    car.printCarInfo();
  }


  // Total Price
  double totalPrice = 0;
  for(var car in cars){
    totalPrice += car.getPrice()!;
  }
  print('Total Prices = $totalPrice');


               // 15% Discount

  double totalAfterDis = 0;
  print("Prices After 15% Discount ");
  for(var car in cars){
    double finalPrice = car.getPrice()! * 0.85;

    print('Car Code : ${car.getCode()}');
    print('Original Price : ${car.getPrice()}');
    print('After Discount : $finalPrice}');
    print('-----------------------------------');

    totalAfterDis += finalPrice;

  }

  // Max & Min Price
  double maxPrice = cars[0].getPrice()!;
  double minPrice = cars[0].getPrice()!;

  for(var car in cars){
    if (car.getPrice()! > maxPrice){
      maxPrice = car.getPrice()!;
    }
    if(car.getPrice()!< minPrice){
      minPrice = car.getPrice()!;
    }
  }

  print('Total After Discount = $totalAfterDis');
  print('The Highest Price : $maxPrice');
  print('Lowest Price : $minPrice');





}


// Car car1 = Car();
// print('Color : ${car1.color} \n Code : ${car1.code} \n Price : ${car1.price}  \n  Model : ${car1.model}');
//
// print('\n----------------------------------------------------------\n');
//
// Car car4 = Car();
// print('Enter Color');
// String color = stdin.readLineSync()!;
// print('Enter Code');
// int code = int.parse(stdin.readLineSync()!);
// print('Enter Model');
// String model = stdin.readLineSync()!;
// print('Enter Price');
// double price = double.parse(stdin.readLineSync()!);
// print('Color : $color \n Code : $code \n Price : $price  \n  Model : $model');
//
//



