import 'package:flutter/material.dart';

class EmployeeForm extends StatefulWidget {
  const EmployeeForm({super.key});

  @override
  State<EmployeeForm> createState() => _EmployeeFormState();
}

class _EmployeeFormState extends State<EmployeeForm> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController agecontroller = TextEditingController();
  TextEditingController locationcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back)),
        title: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Employee",style: TextStyle(fontFamily: "Lato", fontWeight: FontWeight.bold,fontSize: 25, color: Colors.blue),),
          Text("Form",style: TextStyle(fontFamily: "Lato", fontWeight: FontWeight.bold,fontSize: 25, color: Colors.orange),),
        ],
      ),),
      body: Container(
        margin: const EdgeInsets.all(15),
        child:   Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Name", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27),),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: namecontroller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))),
              ),
            ),
            const SizedBox(height: 15),
            const Text("Age", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27),),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: agecontroller,
                decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))),
              ),
            ),
            const SizedBox(height: 15),
            const Text("Location", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27),),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: locationcontroller,
                decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))),
              ),
            ),
            const SizedBox(height: 40),
            Center(child: ElevatedButton(onPressed: () {}, child: const Text("Add", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),))),
          ],
        ),
        ),
    );
  }
}