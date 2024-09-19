//check whether the given number is a Strong numberor not

import 'dart:io';

void main() {
  stdout.write("Enter a number : ");
  int num = int.parse(stdin.readLineSync()!);
  int temp = num;
  int sum = 0;

  while(num > 0) {
    int fact = 1;
    int rem = num%10;
    for(int i = 1; i<=rem; i++) {
      fact = fact*i;
    }
    sum+=fact;
    num~/=10;
  }
  if(temp == sum) {
    print("$temp is a Strong number.");
  } else{
    print("$temp is not a Strong number.");
  }
}