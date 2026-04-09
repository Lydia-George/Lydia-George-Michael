import 'dart:io';
main(){
  List<int> myList=[];
  //1- Fill List
  getList(myList);

  //2-print Data
showList(myList);

  // 3- sum of list
int sum = sumList(myList);
print('Sum = $sum');

  // 4- AVG
 double average=  avg(myList);
 print('Average =$average');

  // 5- Max & Min
  Map<String,int> result = getMaxMin(myList);
  print('The Maximum value is : ${result['max']}');
  print('The Minimum Value is : ${result['min']}');

}

            // Fill List

void getList(List<int> l){
  print('Please Enter The Size of List');
  int size = int.parse(stdin.readLineSync()!);

  for(int i=0; i< size ; i++){
    print('Please Enter Value number ${i+1}');
    int val = int.parse(stdin.readLineSync()!);
    l.add(val);

  }
}

            // 2-print Data
void showList(List<int> showL){

  print('Your List : $showL');

}

            //3- sum of list
int sumList(List<int> sumL){
  int sum=0;
  for (int i=0; i < sumL.length ; i++){
    sum+=sumL[i];
  }
  return sum;
}

            // 4-AVG
double avg(List<int> lAvg){
  int sum = sumList(lAvg);
  return sum/lAvg.length;
}

           // 5- Max&Min
Map<String,int> getMaxMin(List<int> maxMinL){
  int max=maxMinL[0];
  int min =maxMinL[0];

  for(int i =0; i<maxMinL.length; i++){
    if(maxMinL[i]>max){
      max=maxMinL[i];
    }

    if(maxMinL[i]<min){
      min=maxMinL[i];
    }



  }

  return{
    'max':max,
    'min':min,
  };

}