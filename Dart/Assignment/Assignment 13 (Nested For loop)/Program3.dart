/*
10  20  30
40  50  60  
70  80  90
*/

import 'dart:io';

void main() {
  stdout.write("Enter number of rows : ");
  int rows = int.parse(stdin.readLineSync()!);
  int num = 10;

  for(int i = 1; i<=rows; i++)  {
    for(int j = 1; j<=rows; j++) {
      if(num < 100) {
        stdout.write("$num    ");
        num+=10;
      } else {
        stdout.write("$num   ");
        num++;
      }
    }
    print("");
  }
}