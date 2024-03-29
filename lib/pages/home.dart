import 'package:employee_form/pages/employee_form.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Employees", style: TextStyle(fontFamily: "Lato", fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          Text("Firebase", style: TextStyle(fontFamily: "Lato", fontWeight: FontWeight.bold, color: Colors.orange),
          ),
        ],
      ),),
      floatingActionButton: FloatingActionButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context){return const EmployeeForm();}));}, child: const Icon(Icons.add))
      
    );
  }
}