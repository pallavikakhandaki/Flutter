// ? and ! both we can use for the handle null values


import "dart:io";

void main() {
  print("EMployee name : ");
  String? empName = stdin.readLineSync();
  print("you entered : $empName");

  print("Enter Company Name : ");
  String? compName = stdin.readLineSync()!;
  print("You ENtered : $compName");
}