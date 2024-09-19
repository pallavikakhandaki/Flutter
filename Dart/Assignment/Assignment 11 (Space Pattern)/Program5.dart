/*
      1
   4  9
16 25 36
*/


import 'dart:io';

void main() {
  stdout.write("Enter number f rows : ");
  int rows = int.parse(stdin.readLineSync()!);
  int num = 1;

  for(int i = 1; i<=rows; i++) {
    for(int s = 1; s<=rows-i; s++) {
      stdout.write("  ");
    }
    for(int j = 1; j<=i; j++) {
      stdout.write("${num*num}  ");
      num++;
    }
    print("");
  }
}