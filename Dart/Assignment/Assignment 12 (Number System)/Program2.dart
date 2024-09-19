//Check whether the given number is prime number or not


import 'dart:io';

void main() {
  stdout.write("Enter a number : ");
  int num = int.parse(stdin.readLineSync()!);
  int count = 0;

  for(int i = 2; i<=num~/2; i++) {
    if(num%i == 0) {
      count++;
    }
  }
  if(count>1) {
    print("$num is not a prime number.");
  } else {
    print("$num is a prime number.");
  }
}