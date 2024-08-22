
import 'dart:io';

void main() {
  print("Enter the number of Rows : ");
  int rows = int.parse(stdin.readLineSync()!);

  for(int i = 1; i<= rows; i++) {
    for (int j = 1; j <= rows; j++) {
      stdout.write("INC  ");
    }
    print(" ");
  }
}