/*
1 2 3 4
  2 3 4
    3 4
      4
*/

import 'dart:io';

void main() {
  stdout.write("Enter number of rows : ");
  int rows = int.parse(stdin.readLineSync()!);

  for(int i = 1;i<=rows ; i++) {
    int num = i;
    for(int s = 1; s<i; s++) {
      stdout.write("   ");
    }
    for(int j = 1; j<=rows-i+1; j++) {
      stdout.write("$num  ");
      num++;
    }
    print("");
  }
}