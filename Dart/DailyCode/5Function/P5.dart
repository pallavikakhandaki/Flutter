// 4)  Parameters and return value

import "dart:io";

void main() {
  int num1 = int.parse(stdin.readLineSync()!);
  int num2 = int.parse(stdin.readLineSync()!);

  int retVal = add(num1,num2);
  print("Add = $retVal");
}

int add(int num1, int num2) {
  return num1 + num2;
}