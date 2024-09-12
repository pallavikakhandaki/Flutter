

import 'dart:io';

void main() {
  print("Enter number of rows : ");
  int rows = int.parse(stdin.readLineSync()!);

  for(int i = 1; i<=rows; i++) {
    int num = i;
    for(int j = 1; j<=i; j++){
      if(j % 2 == 1) {
        stdout.write("${num * num *num}   ");
      } else {
        stdout.write("${num * num}    ");
      }
      num++;
    }
    print("");
  }
}