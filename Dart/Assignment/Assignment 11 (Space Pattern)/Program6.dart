/*
4 4 4 4
  3 3 3 
    2 2
      1
*/

import 'dart:io';

void main() {
  stdout.write("Enter number of rows : ");
  int rows = int.parse(stdin.readLineSync()!);
  int num = rows;

  for(int i = 1; i<=rows; i++) {
    for(int s = 1; s<i ; s++) {
      stdout.write(" ");
    }
    for(int j = 1; j<=rows-i+1; j++) {
      stdout.write("$num ");
    }
    num--;
    print("");
  }
}