//Check whether the given number is Harshad / Niven number or not


import 'dart:io';

void main() {
  stdout.write("Enter a number : ");
  int num = int.parse(stdin.readLineSync()!);
  int temp = num;
  int sum = 0;

  while(num > 0) {
    int rem = num%10;
    sum += rem;
    num~/=10;
  }
  if(temp%sum == 0) {
    print("$temp is a Harshad Number.");
  } else {
    print("$temp is not a Harshad Number.");
  }
}