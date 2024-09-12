/*
3
3 6
3 6 9
*/

import 'dart:io';

void main() {
  stdout.write("Enter number of rows : ");
  int rows = int.parse(stdin.readLineSync()!);

  for(int i = 1; i<=rows; i++) {
    int num = rows;
    for(int j = 1; j<=i; j++) {
      stdout.write("${num*j}  ");
    }
    print("");
  }
}