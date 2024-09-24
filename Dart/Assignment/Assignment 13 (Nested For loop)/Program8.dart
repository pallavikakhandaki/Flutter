/*
1   2   3   4
5   7   8   9
10  11  13  14
15  16  17  19
*/

import 'dart:io';

void main() {
  stdout.write("Enter number of rows : ");
  int rows = int.parse(stdin.readLineSync()!);
  int num = 1;

  for(int i = 1; i<=rows; i++) {
    for(int j = 1; j<=rows; j++) {
      if(num%6 == 0) {
        num++;
        j=j-1;
      continue;
      } 
      stdout.write("$num  ");

      num++;
    }
    print("");
  }
}