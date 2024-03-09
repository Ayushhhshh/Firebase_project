import 'package:employee_form/service/firebase.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:random_string/random_string.dart';

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
            Center(child: ElevatedButton(onPressed: () async{
              String id = randomAlphaNumeric(10);
              Map<String,dynamic> employeeInfomap = {
              "Name" : namecontroller.text,
              "Age" : agecontroller.text,
              "Location" : locationcontroller.text
            };
            await Database ().addEmployeeDetails(employeeInfomap, id).then((value) {
              Fluttertoast.showToast(
        msg: "This is Center Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
            }
            );
            },
            child: const Text("Add", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),))),
          ],
        ),
        ),
    );
  }
}