import 'package:flutter/material.dart';
import 'package:newtask/local_database/student_details_screen.dart';
import 'package:newtask/local_database/user_db.dart';

class DatabaseScreen extends StatefulWidget {
  const DatabaseScreen({super.key});

  @override
  State<DatabaseScreen> createState() => _DatabaseScreenState();
}

class _DatabaseScreenState extends State<DatabaseScreen> {
  StudentDB obj = StudentDB();

  TextEditingController nameController = TextEditingController();
  TextEditingController gradeController = TextEditingController();
  TextEditingController courseController = TextEditingController();


  @override
  void initState() {
    super.initState();
    obj.createTable();
  }

  void refresh() {
    obj.getStudentData().then((data) {
      setState(() {
        obj.studs = data;
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.white38,
          title: Text('Student App'),
        ),

        body:
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: 'Full Name',
                  hintText: "Enter Your FullName",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)
                  ),
                ),


              ),
              SizedBox(height: 12,),
              TextFormField(
                controller: gradeController,
                decoration: InputDecoration(
                    labelText: 'Grade',
                    hintText: 'Enter your grade',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    )
                ),
              ),

              SizedBox(height: 12,),
              TextFormField(
                controller: courseController,
                decoration: InputDecoration(
                    labelText: 'Course Name',
                    hintText: 'Enter Course Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),

                    )
                ),
              ),

              SizedBox(height: 16,),
              ElevatedButton(
                  onPressed: () async{
                   await obj.fillData(
                        fn: nameController.text,
                        grade: int.parse(gradeController.text),
                        cs: courseController.text);

                    // var data =  obj.getStudentData();
                    // print(data);


                    nameController.clear();
                    gradeController.clear();
                    courseController.clear();

                    refresh();
                  },
                  child: Text('Add Student')),

              SizedBox(height: 20,),


              Expanded(
                  child: obj.studs.isEmpty
                      ? Center(
                    child: Text("No Students Yet"),
                  )
                      :
                  ListView.builder(
                      itemCount: obj.studs.length,
                      itemBuilder: (context, index) {
                        final student = obj.studs[index];
                        return Card(
                          child: ListTile(
                            title: Text(student[index]['fullname']),
                            subtitle: Text(
                                "Course Name : ${student['course_name']} | "
                                    "Grade : ${student['grade']}"
                            ),

                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (_) =>
                                      StudentDetailsScreen(student: student)));
                            },

                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(onPressed: () {
                                  obj.deleteStudent(id: student["student_id"]);
                                  refresh();
                                },
                                    icon: Icon(
                                      Icons.delete_outline,
                                      color: Colors.red,)),

                                IconButton(onPressed: () {
                                  nameController.text = student['fullname'];
                                  gradeController.text= student['grade'].toString();
                                  courseController.text =
                                      student['course_name'];
                                },
                                    icon: Icon(Icons.edit, color: Colors.blue,))
                              ],
                            ),
                          ),


                        );
                      }))


            ],
          )
        )

    );
  }
}
