/*
0   2   6   12
20  30  42  56
72  90  110 132
156 182 210 240
*/

import 'dart:io';

void main() {
  stdout.write("Enter number of rows : ");
  int rows = int.parse(stdin.readLineSync()!);
  int num = 0;
  int add = 2;

  for(int i = 1; i<=rows; i++) {
    for(int j = 1; j<=rows; j++) {
      stdout.write("$num   ");
      num+=add;
      add+=2;
    }
    print("");
  }
}