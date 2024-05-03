import 'package:flutter/material.dart';
import 'package:flutter_student_manage_crud/ui/manage_students/add_student_screen.dart';
import 'package:flutter_student_manage_crud/ui/manage_students/view_students_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
              color: Theme.of(context).colorScheme.primary,
              clipBehavior: Clip.hardEdge,
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ViewStudentsScreen()),
                  );
                },
                child: SizedBox(
                  width: width / 1.5,
                  height: height / 5,
                  child: Center(
                      child: Text(
                    'View Students',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Theme.of(context).colorScheme.tertiary,
                        ),
                  )),
                ),
              ),
            ),
            Card(
              color: Theme.of(context).colorScheme.primary,
              clipBehavior: Clip.hardEdge,
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AddStudentScreen()),
                  );
                },
                child: SizedBox(
                  width: width / 1.5,
                  height: height / 5,
                  child: Center(
                      child: Text(
                    'Add Students',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Theme.of(context).colorScheme.tertiary,
                        ),
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
