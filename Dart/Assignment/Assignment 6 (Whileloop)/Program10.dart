//Write a prpgram to check whether the number is a Palindrome number or not

import "dart:io";

void main() {
  int num = int.parse(stdin.readLineSync()!);
  int temp = num;
  int rev = 0;

  while (num > 0) {
    int rem = num % 10;
    rev = rem + rev * 10;
    num = num ~/ 10;
  }

  if(rev == temp) {
    print("$temp is a palindrome number");
  } else {
    print("$temp is not a palindrome number");
  }
}