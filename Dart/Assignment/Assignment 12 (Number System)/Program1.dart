//Given number is perfect or not

import 'dart:io';

void main() {
  stdout.write("Enter a number : ");
  int num = int.parse(stdin.readLineSync()!);
  int sum = 0;

  for(int i = 1; i<=num~/2; i++) {
    if(num%i == 0) {
      sum+=i;
    }
  }
  if(num == sum) {
    print("$num is perfect number.");
  } else{
    print("$num is not a perfect number.");
  }
}