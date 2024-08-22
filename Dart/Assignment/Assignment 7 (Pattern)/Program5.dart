
import 'dart:io';

void main() {
  print("Enter the number of rows : ");
  int rows = int.parse(stdin.readLineSync()!);

  int num = rows;
  for (int i = 1; i <= rows; i++) {
    for (int j = 1; j <= rows; j++) {
      stdout.write("$num ");
    }
    num--;
    print("");
  }
}