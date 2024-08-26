

import 'dart:io';

void main() {
  print("Enter the number of rows : ");
  int rows = int.parse(stdin.readLineSync()!);
  
  for(int i = 1; i <= rows; i++) {
    for(int j = 1; j <= rows; j++) {
      if (i % 2 == 0) {
        stdout.write("0 ");
      } else {
        stdout.write("1 ");
      }
    }
    print("");
  }
}