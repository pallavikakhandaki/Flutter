
import 'dart:io';

void main() {
  print("Enter the Number of Rows : ");
  int rows = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= rows; i++) {
    for (int j = 1; j <= rows; j++) {
      stdout.write("*#  ");
    }
    print(" ");
  }
}