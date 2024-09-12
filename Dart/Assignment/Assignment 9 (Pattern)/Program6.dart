import 'dart:io';

void main() {
  stdout.write("Enter number of rows = ");
  int rows = int.parse(stdin.readLineSync()!);
  int num = 0;

  for(int i =1; i<=rows; i++) {
    num= i;
    for(int j = 1; j<=rows-i+1; j++) {
      stdout.write("$num  ");
      num++;
    }
    print("");
  }
}