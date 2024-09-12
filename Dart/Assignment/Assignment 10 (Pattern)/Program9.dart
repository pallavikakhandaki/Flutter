/*
1
2 5
3 6 8
*/

import 'dart:io';

void main() {
  stdout.write("Enter number of rows : ");
  int rows = int.parse(stdin.readLineSync()!);
  int num = 1;

  for(int i = 1; i<=rows; i++) {
    num = i;
    int num2 = 0;
    for(int j = 1; j<=i; j++) {
      stdout.write("$num  ");
      num = num + rows - num2;
      num2++;
    }
    print("");
  }
}