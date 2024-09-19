/*
    3
  2 3
1 2 3
*/

import 'dart:io';

void main() {
  stdout.write("Enter number of rows : ");
  int rows = int.parse(stdin.readLineSync()!);

  for(int i = 1; i<=rows; i++) {
    for(int s = 1; s<=rows-i; s++) {
      stdout.write("  ");
    }
    int num = rows -i + 1;
    for(int j = 1; j<=i; j++) {
      stdout.write("$num ");
      num++;
    }
    print("");
  }
} 