/*
    1
  2 3 4
5 6 7 8 9
*/


import 'dart:io';

void main() {
  stdout.write("Enter number of rows : ");
  int rows = int.parse(stdin.readLineSync()!);
  int num = 1; 

  for(int i = 1; i<=rows; i++) {
    for(int s = 1; s<=rows-i; s++) {
      stdout.write("  ");
    }
    for(int j = 1; j<=i*2-1; j++) {
      stdout.write("$num ");
      num++;
    }
    print("");
  }
}