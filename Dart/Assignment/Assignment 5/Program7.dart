//Write a program to print the square of add digits and cube f even diguts between 40 to 50

void main() {
  int num = 40;
  while (num <= 50) {
    if (num % 2 == 0) {
      print(num * num * num);
    } else {
      print(num * num);
    }
    num++;
  }
}