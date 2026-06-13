import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newtask/students_cubit/students_logic.dart';

import '../students_cubit/students_state.dart';
class StudentDetailsScreen extends StatelessWidget {
  final Map student;
   StudentDetailsScreen({required this.student,super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context) => StudentsLogic()..createTable(),
    child: BlocConsumer<StudentsLogic,StudentState>(
      listener: (context,state){},
      builder: (context,state){
        StudentsLogic obj = BlocProvider.of(context);
        return Scaffold(
          appBar: AppBar(
            title: Text("Student Info "),

          ),

          body: Padding(

            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Name : ${student['fullname']}"),
                SizedBox(height: 10,),

                Text("Grade : ${student['grade']}"),
                SizedBox(height: 10,),

                Text("Course Name : ${student['course_name']}"),

              ],
            ),
          ),

        );
      }, ),
    );
  }
}
