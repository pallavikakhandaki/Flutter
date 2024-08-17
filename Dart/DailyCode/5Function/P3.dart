//3)  NO parameters and return values

import "dart:io";

void main() {
  int retVal = add();
  print("Addition of two numbers : $retVal");
}

int add() {
  int num1 = int.parse(stdin.readLineSync()!);
  int num2 = int.parse(stdin.readLineSync()!);
  return num1+num2;
}