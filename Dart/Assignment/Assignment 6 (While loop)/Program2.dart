//Take a number from user and print all the numbers from the input number till 1. If the number is odd then print the numbers by the 
//difference of 2 and if the number is even print the numbers with the difference of 1

import 'dart:io';

void main() {
  int num = int.parse(stdin.readLineSync()!);
  if (num % 2 == 1) {
    while(num > 0) {
      print(num);
      num = num - 2;
    }
  } else {
    while(num > 0) {
      print (num);
      num--;
    }
  }
}