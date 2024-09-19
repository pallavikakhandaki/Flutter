/*
    6
  5 4
3 2 1  
*/

import 'dart:io';

void main() {
  stdout.write("Enter number of rows : ");
  int rows = int.parse(stdin.readLineSync()!);
  int num = ((rows*(rows+1))~/2);

  for(int i = 1; i<=rows; i++) {
    for(int s = 1; s<=rows-i; s++) {
      stdout.write("  ");
    }
    for(int j = 1; j<=i; j++) {
      stdout.write("$num ");
      num--;
    }
    print("");
  }
}