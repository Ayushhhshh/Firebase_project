import 'package:employee_form/pages/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyADPpn333AiZELvHOLBEEt-gMuDIJWElxs",
      appId: "1:196312047891:android:8908541fdb67bc49023ae6", 
      messagingSenderId: "196312047891", 
      projectId: "employee-form-90748")
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
