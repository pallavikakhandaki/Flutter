//Write a program to count the digits of a given number

import "dart:io";

void main() {
  int num = int.parse(stdin.readLineSync()!);
  int count = 0;
  while(num>0) {
    num = num ~/10;
    count++;
  }
  print(count);
}