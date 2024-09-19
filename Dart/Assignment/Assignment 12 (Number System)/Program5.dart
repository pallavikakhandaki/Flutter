//Check whether the given number is a palindrome number or not


import 'dart:io';

void main() {
  stdout.write("Enter a number : ");
  int num = int.parse(stdin.readLineSync()!);
  int temp = num;
  int rev = 0;

  while(temp > 0) {
    int rem = temp%10;
    rev = rev * 10 + rem;
    temp = temp~/=10;
  }
  if(num == rev) {
    print("$num is a Palindrome number.");
  } else {
    print("$num is not a Palindrome number.");
  }
}