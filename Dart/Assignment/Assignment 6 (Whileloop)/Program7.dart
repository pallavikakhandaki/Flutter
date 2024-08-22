
//Write a program to count the odd digits of the given number

import "dart:io";
void main() {
  int num = int.parse(stdin.readLineSync()!);
  int count = 0;
  while (num > 0) {
    if (num % 2 != 0) {
      count ++;
    }
    num = num ~/ 10;
  }
  print(count);
}