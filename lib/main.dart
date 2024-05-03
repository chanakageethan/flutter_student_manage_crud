import 'package:flutter/material.dart';
import 'package:flutter_student_manage_crud/ui/home/home_screen.dart';
import 'package:flutter_student_manage_crud/ui/manage_students/add_student_screen.dart';
import 'package:flutter_student_manage_crud/ui/manage_students/view_students_screen.dart';
import 'package:flutter_student_manage_crud/utils/custom_manager.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        // Define the default brightness and colors.
        colorScheme: ColorScheme.fromSeed(
          seedColor: ColorManager.primary,
          primary: ColorManager.primary,
          secondary: ColorManager.secondary,
          tertiary: ColorManager.tertiary,
          background: ColorManager.background,
          brightness: Brightness.light,
          error: ColorManager.error
        ),

        textTheme: TextTheme(
          displayLarge: const TextStyle(
            fontSize: 72,
            fontWeight: FontWeight.bold,
          ),
          titleLarge: GoogleFonts.oswald(
            fontSize: 30,
            fontStyle: FontStyle.italic,
          ),
          bodyMedium: GoogleFonts.merriweather(),
          displaySmall: GoogleFonts.pacifico(),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
