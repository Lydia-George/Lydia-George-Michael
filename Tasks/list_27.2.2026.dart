import 'dart:io';

main() {
  String? check;
  List myList = [];

  do {
    print('1- Add Values');
    print('2- Remove value');
    print('3- Update Value');
    print('4- Show Values');
    print('5- Search Values');
    print('Please Enter Operation Number');

    int opNum = int.parse(stdin.readLineSync()!);

    switch (opNum) {
      ////////////////////////////ADD VALUE
      case 1:
        print('Enter Number Of Values ');
        int size = int.parse(stdin.readLineSync()!);

        for (int i = 0; i < size; i++) {
          print('Enter value Number${i + 1} ');
          int val = int.parse(stdin.readLineSync()!);
          myList.add(val);
        }
        print('List : $myList');
        break;
      //////////////////////////// REMOVE VALUE

      case 2:
        print('Do you Want to Remove by Value or by index');
        String valOrInd = stdin.readLineSync()!.toLowerCase();

        if (valOrInd == 'value') {
          print('Please Enter The Value');
          int val = int.parse(stdin.readLineSync()!);
          if (myList.contains(val)) {
            myList.remove(val);
            print('Value $val Removed');
          } else {
            print('Value Not found');
          }
        } else {
          print('Enter Index');
          int index = int.parse(stdin.readLineSync()!);
          if (index >= 0 && index < myList.length) {
            myList.removeAt(index);
            print('The value at index $index removed');
          } else {
            print('Invalid Index');
          }
        }
        print('List : $myList');
        break;

      //////////////////////////// UPDATE VALUE
      case 3:
        print('Enter Old Value ');
        int oldVal = int.parse(stdin.readLineSync()!);

        if (myList.contains(oldVal)) {
          print('Enter New Value');
          int newVal = int.parse(stdin.readLineSync()!);

          int index = myList.indexOf(oldVal);
          myList[index] = newVal;

          print('Value Updated Successfully');
          print('List : $myList');
        } else {
          print('Value Not Found');
        }
        break;

      case 4:
        print('$myList \n');
        break;

      case 5 :
        print('Enter value to search ?');
        int searchVal = int.parse(stdin.readLineSync()!) ;
        if(myList.contains(searchVal)){
          print('The Value Found');
        }else {
          print('Not Found');
        }
        print('List : $myList' );
        break;
    }
    print('Do you want to continue ? (y/n)');
    check = stdin.readLineSync()!.toLowerCase();
  } while (check == 'y');
  // print('End');
}
