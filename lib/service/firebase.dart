import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:employee_form/pages/employee_form.dart';
import 'package:flutter/foundation.dart';

class Database{
  Future addEmployeeDetails(Map<String,dynamic> employeeInfoMap, String id)async{
    return await FirebaseFirestore.instance.
    collection("Employee")
    .doc(id)
    .set(employeeInfoMap);
  }
}