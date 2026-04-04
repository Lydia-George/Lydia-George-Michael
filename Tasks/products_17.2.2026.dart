import 'dart:io';

main() {
  double aPrice = 25.50;
  double aDis = 0.15;
  double bPrice = 30.25;
  double bDis = 0.075;
  double cPrice = 90.00;
  double cDis = 0.10;
  double dPrice = 45.75;
  double dDis = 0.15;

  print('Enter Quantity of product A  ');
  int qA = int.parse(stdin.readLineSync()!);
  print('Total Quantity of product A is $qA');
  double totABeforeD = qA * aPrice;
  print('Total Quantity of Product A is $qA and Price is : $totABeforeD');

  double totAAfD = totABeforeD - (totABeforeD * aDis);
  if (qA >= 5) {
    print('Total After Discount is : $totAAfD');
  } else {
    print('No Discount');
  }
//----------------------PRODUCT B--------------------------------------------------------------//
  print('Enter Quantity of Product B ');
  int qB = int.parse(stdin.readLineSync()!);
  print('Total Quantity of Product B is $qB ');
  double totBBeforeD = qB * bPrice;
  print('Total Quantity of Product B is $qB and price is : $totBBeforeD');

  double totBAfD = totBBeforeD - (totBBeforeD * bDis);
  if (qB >= 5) {
    print('Total After Discount is : $totBAfD');
  } else {
    print('No Discount');
  }
//----------------------PRODUCT C--------------------------------------------------------------//
  print('Enter Quantity of Product C');
  int qC = int.parse(stdin.readLineSync()!);
  print('Total quantity of Product C is : $qC');
  double totCBeforeD = cPrice* qC;
  print ('Total quantity of Product C is : $qC and Price is : $totCBeforeD');

  double totCAfD = totCBeforeD -(totCBeforeD*cDis);
  if (qC >=5){
    print('Total After Discount is :$totCAfD');
  }else{
    print('No Discount');
  }

  //----------------------PRODUCT D--------------------------------------------------------------//
  print('Enter Quantity of Product D');
  int qD = int.parse(stdin.readLineSync()!);
  print('Total quantity of Product D is : $qD');
  double totDBeforeD = dPrice * qD;
  print('Total quantity of Product D is : $qD and Price is : $totDBeforeD ');

  double totDAfD = totDBeforeD-(totDBeforeD*dDis);
  if(qD>=5){
    print('Total After Discount is : $totDAfD');
  }else{
    print('No Discount');
  }

  //---------------------- Total Products Price Without Discount --------------------------------------------------------------//

double sumBeforeDis = totABeforeD+ totBBeforeD + totCBeforeD + totDBeforeD;
  print('Total Invoice Before Discount : $sumBeforeDis');

  //---------------------- Total Products Price With Discount --------------------------------------------------------------//
double sumAfterDis = totAAfD + totBAfD + totCAfD + totDAfD ;
  print('Total Invoice After Discount : $sumAfterDis');


}