import 'package:employee_form/pages/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyALvDoJroumAi2zIDIoDze8xd0CwfUv6aw",
      appId: "1:461334967932:android:d0de76d72f066522943bf9",
      messagingSenderId: "461334967932",
      projectId: "employee-form-366b6")
  ); 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
