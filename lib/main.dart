import 'package:employee_form/pages/employee_form.dart';
import 'package:employee_form/pages/home.dart';
import 'package:flutter/material.dart';

void main() async {
  // await Firebase.initializeApp(); 
  // WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EmployeeForm(),
    );
  }
}
