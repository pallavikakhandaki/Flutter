//Write a program to print even numbers 50 to 30

void main() {
  int num = 50;
  while (num >= 30) {
    if (num % 2 == 0) {
      print(num);
    }
    num--;
  }
}