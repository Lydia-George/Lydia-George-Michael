import 'dart:io';

main(){
  List<Map<String, dynamic>> students =[];
  
  print('How many Students do you have ?');
  int stdNo =int.parse(stdin.readLineSync()!);

  /// Students Data
  for (int i =0; i<stdNo ; i++) {
    print('\n Enter data for student ${i + 1} ');

    print('please enter student ID');
    int id = int.parse(stdin.readLineSync()!);

    print('please enter student name');
    String stName = stdin.readLineSync()!;

    print('please enter Number of Subjects');
    int subNo = int.parse(stdin.readLineSync()!);

    List<int> degrees = [];
    int total = 0;

    for (int j = 0; j < subNo; j++) {
      int degree;

      do {
        print('Enter Degree of Subject ${j + 1}');
        degree = int.parse(stdin.readLineSync()!);

        if (degree < 3) {
          print('Student Failed ');
        }
      } while (degree < 3);
      degrees.add(degree);
      total += degree;
    }

    double percentage = total / subNo;

    String grade;

    if (percentage >= 85) {
      grade = 'Excellent';
    } else if (percentage >= 75) {
      grade = 'Very Good';
    } else if (percentage >= 65) {
      grade = 'Good';
    } else if (percentage >= 50) {
      grade = 'Pass';
    } else {
      grade = 'Fail';
    }

    students.add({
      'id': id,
      'name': stName,
      'degrees': degrees,
      'percentage': percentage,
      'grade': grade
    });
  }

      /// Print Students Data
      print('\n Students Data :');
      students.forEach((student){
        print(student);
      });

      
      /// MAX & MIN GRADE
      var topStudent = students[0];
      var lowStudent = students[0];
      
      for(var s in students){
        if (s['percentage'] > topStudent['percentage']){
          topStudent=s;
        }
        if(s['percentage'] < lowStudent['percentage']){
          lowStudent = s;
        }
      }
      
      print('\nMax Degree belongs to ${topStudent['name']} + ${topStudent['percentage']}%');
      print('Min Degree belongs to ${lowStudent['name']} + ${lowStudent['percentage']} %');


  }





