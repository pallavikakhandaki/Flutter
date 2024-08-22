//Write a program to print a the number divisible by 7 in range 20 to 30

import "dart:io";

void main() {
  int num = int.parse(stdin.readLineSync()!);
  while (num <= 30) {
    if (num % 7 == 0) {
      print(num);
    }
    num++;
  }
}