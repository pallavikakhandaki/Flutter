/*
3
2 4
1 2 3
*/

import 'dart:io';

void main() {
  stdout.write("Enter number of rows : ");
  int rows = int.parse(stdin.readLineSync()!);
   int num = rows;

  for(int i = 1; i<=rows; i++) {
    for(int j = 1; j<=i; j++) {
      stdout.write("${num*j}  ");
    }
    num--;
    print("");
  }
}