//Write a program to print the sum of add numbers in the range 20 to 120

void main() {
  int sum = 0;
  for(int i = 20; i <= 120; i++) {
    if (i % 2 != 0) {
      sum += i;
    }
  }
  print(sum);
}