/*
2 4  6  8
  10 12 14
     16 18
        20
*/

import 'dart:io';

void main() {
  stdout.write("Enter number of rows : ");
  int rows = int.parse(stdin.readLineSync()!);
  int num = 2;

  for(int i = 1; i<=rows; i++) {
    for(int s = 1; s<i; s++) {
      stdout.write(" ");
    }
    for(int j = 1; j<=rows-i+1; j++) {
      stdout.write("$num ");
      num+=2;
    }
    print("");
  }
}