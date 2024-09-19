//Check whether a number is a Duck number or not


import 'dart:io';

void main() {
  stdout.write("Enter a number : ");
  int num = int.parse(stdin.readLineSync()!);
  int flag = 0;
  int temp = num;

  while(num > 0) {
    int rem = num%10;
    if (rem == 0) {
      flag = 1;
    } 
    num~/=10;
  }
  if(flag == 1) {
    print("$temp is a Duck number.");
  } else{
    print("$temp is not a Duck number.");
  }
}