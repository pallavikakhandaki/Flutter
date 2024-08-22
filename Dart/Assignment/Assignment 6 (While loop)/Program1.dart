//Write a program to print the sum of all even numbers and the product of the all odd numbers between 1 to 10

import "dart:io";

void main() {
  int sum = 0;
  int mul = 1;
  int num = int.parse(stdin.readLineSync()!);

  while(num <= 10) {
    if(num % 2 == 0) {
      sum += num;
    } else {
      mul *= num;
    }
    num++;
  }
  print(sum);
  print(mul);
}