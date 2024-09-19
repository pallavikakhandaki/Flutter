/*
1 1 1 1 1
  1 1 1
    1
*/


import 'dart:io';

void main() {
  stdout.write("Enter number of rows : ");
  int rows = int.parse(stdin.readLineSync()!);
  int num = 1;

  for(int i = 1; i<=rows; i++) {
    for(int s = 1; s<i; s++) {
      stdout.write("  ");
    }
    for(int j = 1; j<=(rows-i)*2+1; j++) {
      stdout.write("$num ");
    }
    print("");
  } 
}