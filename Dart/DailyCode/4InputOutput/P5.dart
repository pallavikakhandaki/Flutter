//readLineSync() he method String value return karto tya mule apan int value input gheu shakat nahi
//Tya sathi "int.parse" use kele jate

import "dart:io";

void main() {
  print("Employee Name : ");
  String? empName = stdin.readLineSync();
  print("Employee Name : $empName");

  print("Enter Employee ID : ");
  int empId = int.parse(stdin.readLineSync()!);
  print("Employee ID : $empId");

  print("Enter Employee Salary : ");
  double empSal = double.parse(stdin.readLineSync()!);
  print("Employee Salary : $empSal");
}