//Write a program to prnt the square of add digits between 20 to 10

void main() {
  int num = 20;
  while (num >= 10) {
    if (num % 2 != 0) {
      print(num * num);
    }
    num--;
  }
}