import 'package:flutter/material.dart';
import 'package:flutter_student_manage_crud/ui/home/home_screen.dart';
import 'package:flutter_student_manage_crud/ui/manage_students/add_student_screen.dart';
import 'package:flutter_student_manage_crud/ui/manage_students/view_students_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}


