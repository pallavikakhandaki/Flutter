//Write a program to print the sum of square of the numbers in range 1 to 15

void main() {
  int sum = 0;
  for(int i = 1; i <= 15; i++) {
    int square = i * i;
    sum = sum + square;
  }
  print(sum);
}