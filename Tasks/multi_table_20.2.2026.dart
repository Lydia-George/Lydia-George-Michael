import 'dart:io';
main(){
  print('Please Enter Start Table Number');
  int startTable = int.parse(stdin.readLineSync()!);
  print('Please Enter End Table Number');
  int endTable = int.parse(stdin.readLineSync()!);
  print('Please Enter Start Number');
  int startNum = int.parse(stdin.readLineSync()!);
  print('Please Enter End Number');
  int endNum = int.parse(stdin.readLineSync()!);

  for(int i=startTable; i<= endTable; i++ ){
    for(int j = startNum ; j<= endNum; j++){
     int result = i* j;
     print('$i * $j = $result');
    }
    print('----------------------------------');

  }




}