import 'package:flutter/material.dart';
import 'package:flutter_student_manage_crud/ui/manage_students/manage_student_screen.dart';

import '../../models/student.dart';

class ViewStudentsScreen extends StatefulWidget {
  const ViewStudentsScreen({super.key});

  @override
  State<ViewStudentsScreen> createState() => _ViewStudentsScreenState();
}

class _ViewStudentsScreenState extends State<ViewStudentsScreen> {
  List<Student> items = [
    Student(name: "John Doe", email: "john@example.com", city: "New York"),
    Student(name: "Jane Smith", email: "jane@example.com", city: "Los Angeles"),
    Student(name: "Alice Johnson", email: "alice@example.com", city: "Chicago"),
    // Add more Person objects as needed
  ];
  final searchController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    searchController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color:Theme.of(context).colorScheme.primary),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          "View Students",
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: height * 0.05, horizontal: width * 0.05),
          child: Column(
            children: [
              Form(
                key: _formKey,
                child: TextFormField(
                  controller: searchController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      hintText: 'Search by id',
                      suffixIcon: IconButton(
                        icon: Icon(Icons.search),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Processing Data')),
                            );
                          }
                        },
                      )),
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Container(
                height: height / 1.5,
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ManageStudentScreen(
                                      student: items[index])),
                            );
                          },
                          child: Container(
                              height: height / 10,
                              width: width / 1.5,
                              decoration: BoxDecoration(
                                  color: Theme.of(context).colorScheme.primary,
                                  border: Border.all(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8))),
                              child: Center(
                                child: Text(
                                  items[index].name,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall!
                                      .copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .tertiary,
                                      ),
                                ),
                              ))),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
