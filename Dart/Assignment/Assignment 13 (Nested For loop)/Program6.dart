/*
12  18  20  24
30  36  42  48
54  60  66  72
78  84  90  96
*/

import 'dart:io';

void main() {
  stdout.write("Enter number of rows : ");
  int rows = int.parse(stdin.readLineSync()!);
  int num = 12;
  int temp = num;

  for(int i = 1; i<=rows; i++) {
    for(int j = 1; j<=rows; j++) {
      int sum = 0;
      num = temp;
      while(num > 0){
        int rem = num % 10;
        sum+=rem;
        num~/=10;
      }
      if(temp%sum == 0){
        stdout.write("$temp ");
      } else {
        j = j-1;
      }
      temp++; 
    }
    print("");
  }
}