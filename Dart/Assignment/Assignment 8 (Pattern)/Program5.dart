

import 'dart:io';

void main() {
  print("Enter number of rows : ");
  int rows = int.parse(stdin.readLineSync()!);
  int n = 1;
  
  for(int i = 0; i < rows; i++) {
    int num = n + i*2;
    for (int j = 0; j < rows; j++) {
      stdout.write("$num  ");
      num += 2;
    }
    print("");
  }
}