//Check whether the given number is an armstring number or not

import 'dart:io';

void main() {
  stdout.write("Enter a number : ");
  int num = int.parse(stdin.readLineSync()!);
  int temp = num;
  int count = 0;
  int sum = 0;
  int mul = 1;

  while(temp > 0) {
    int rem = temp % 10;
    count++;
    temp~/=10;
  }
  temp = num;
  while(num > 0){
    int r = num%10;
    for(int i = 1; i<=count; i++) {
      mul*=r;
    }
    sum+=mul;
    mul=1;
    num=num~/10;
  }
  if(temp == sum) {
    print("Armstring number");
  } else{
    print("Not ");
  }
}