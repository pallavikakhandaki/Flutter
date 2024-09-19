//Check whether the given number is a Deficient number or not


import 'dart:io';

void main(){
  stdout.write("Enter a number : ");
  int num = int.parse(stdin.readLineSync()!);
  int sum = 0;

  for(int i = 1; i<=num~/2; i++) {
    if(num%i == 0) {
      sum = sum+i;
    }
  }
  if(num > sum) {
    print("$num is a deficient number.");
  } else {
    print("$num is not a Deficient number.");
  }
}