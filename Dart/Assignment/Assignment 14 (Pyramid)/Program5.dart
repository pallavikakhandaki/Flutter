/*
    1
  1 2 1
1 2 3 2 1
*/


import 'dart:io';

void main() {
  stdout.write("Enter number of rows : ");
  int rows = int.parse(stdin.readLineSync()!);
 

  for(int i = 1; i<=rows; i++) {
    int num = 1;
    for(int s = 1; s<=rows-i; s++) {
      stdout.write("   ");
    }
    for(int j = 1; j<=i*2-1; j++) {
      if(j<i) {
        stdout.write("$num  ");
        num++;
      } else {
        stdout.write("$num  ");
        num--;
      }
    }
    print("");
  }
}