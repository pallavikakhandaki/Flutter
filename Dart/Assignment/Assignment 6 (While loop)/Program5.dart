//Write a program to calculate the factorial of the given number

import "dart:io";

void main() {
  int num = int.parse(stdin.readLineSync()!);
  int fact = 1;

  while(num >= 1) {
    fact = fact * num;
    num--;
  }
  print(fact);

}