/*
    3
  2 3
1 2 3
*/

import 'dart:io';

void main() {
  stdout.write("Enter number of rows : ");
  int rows = int.parse(stdin.readLineSync()!);
  int num = 1;
  int temp = num;
  

  for(int i = 1; i<=rows ; i++) {
    for(int j = 1; j<=rows ; j++) {
      int sum = 0;
      num = temp;
      while(num > 0) {
        int rem = num%10;
        sum += rem;
        num~/=10;
      }
      if(temp % sum == 0) {
        stdout.write("$temp  ");
      } else {
        j = j-1;
      }
      temp++;
    }
    print("");
  }
}