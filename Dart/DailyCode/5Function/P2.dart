//4 Types of Functions

/*
1)  No Parameter and no return value
2)  Parameters and no return value
3)  No parameters and return value
4)  Parameters and return value
 */

//1) No Parameter and no return value

import "dart:io";
void main() {
  int num1 = int.parse(stdin.readLineSync()!);
  int num2 = int.parse(stdin.readLineSync()!);

  print("Add = ${num1 + num2}");
}