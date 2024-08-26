//Arrow Function

import 'dart:io';

int add(int x, int y) => x + y;

int sub(int x, int y) => x - y;

int mul(int x, int y) => x * y;

int div(int x, int y) => x~/y;

void main() {
  int x = int.parse(stdin.readLineSync()!);
  int y = int.parse(stdin.readLineSync()!);

  print(add(x,y));
  print(sub(x,y));
  print(mul(x,y));
  print(div(x,y));
}