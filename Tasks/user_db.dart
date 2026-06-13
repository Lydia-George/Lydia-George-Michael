
import 'package:sqflite/sqflite.dart';

class StudentDB{
  Database? database; // create
  List<Map> studs = []; // get

  createTable()async{
    database = await
     openDatabase(
        'newTask.db',
      version: 1,

      onCreate: (Database db, int version) async{
          print('Database Created');

          await db.execute("CREATE TABLE student (student_id INTEGER AUTOINCREMENT NOT NULL PRIMARY KEY ,"
              "fullname TEXT NOT NULL ,"
              " grade INTEGER , "
              "course_name TEXT)");

          print('Created Table');
      },
       onOpen: (Database db) {
          print('Database Open');

          getStudentData().then((data){
            studs = data;
            // emit (getStudent)
            print(studs);

          }).catchError((e){
            print('Exception $e');
          });
       }
    ).then((d){
      database = d ;
      // => emit()

     }).catchError((e){
       print('Exception $e');
     });
  }

  Future<void> fillData({required String fn, required int grade, required String cs}) async{
    await database?.transaction((txn) async{
      txn.rawInsert(
          "INSERT INTO student (fullname , grade , course_name)"
      "VALUES(?,?,?)",
              [fn, grade, cs]
      ).then((v){
        print('Inserted Row ${v}');
        /// Fill list of Employees
        // emit(insertedEmployee)

      }).catchError((e){
        print('Exception $e');
      });
    });
  }

  void updateData({required String fn, required int grade, required int id})async{
    database?.rawUpdate(
        "UPDATE student SET fullname=? , grade=? where student_id=?",
        [fn , grade, id]

    ).then((v){
      print('Update Data ! $v');
    }).catchError((e){
      print("Exception is $e");
    });
  }


  void deleteStudent({required int id}) async{
    database?.rawDelete("DELETE FROM student WHERE student_id=?",
    [id]
    ).then((v){
      print('Deleted Row $v');
    }).catchError((e){
      print('Exception is : $e');
    });
  }



  Future <List<Map<String, dynamic>>> getStudentData()async {
    return await database!.rawQuery("SELECT * FROM student");
  }

}