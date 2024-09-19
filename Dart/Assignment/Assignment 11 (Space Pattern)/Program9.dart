/*
20  18  16  14
    12  10   8
         6   4
             2
*/

import 'dart:io';

void main() {
  stdout.write("Enter number of rows : ");
  int rows = int.parse(stdin.readLineSync()!);
  int num = (rows * (rows+1));

  for(int i = 1; i<=rows; i++) {
    for(int s = 1; s<i; s++) {
      stdout.write("  ");
    }
    for(int j = 1; j<=rows-i+1;j++) {
      stdout.write("$num ");
      num-=2;
    }
    print("");
  }
}