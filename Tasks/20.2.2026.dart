import 'dart:io';
main(){

  print('Enter your Marital Status');
  String mStat = stdin.readLineSync()!.trim().toLowerCase();
  if(mStat == 'married'){
    print('How many children do you have ?');
    int ch = int.parse(stdin.readLineSync()!);

    if(ch <= 3){
      print('Salary is : ${1200+ch*150} ');
    }else if(ch >=4 && ch <= 6 ){
      print('The Salary is ${1800+ch*250}');
    }else if(ch >= 7){
      print('The Salary is ${2000+ch*300}');
    }else{
      print('Please enter a Valid Number');
    }

  }else if(mStat == 'single'){
    print('How Many years do you work ?');
    int y = int.parse(stdin.readLineSync()!);

    if(y <= 5){
      print('The Salary is ${1000+y*200}');
    }else if(y >= 6 && y <= 10){
      print('The Salary is ${1500 + y * 400}');
    }else if(y>= 11){
      print('The Salary is ${2000 +y*600}');
    }else{
      print('Please enter a Valid Number');
    }
  }else{
    print('Please enter married or single only');
  }
}