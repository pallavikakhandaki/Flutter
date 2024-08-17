//Write a program to print the numbers divisible by 9 in the range 63 to 123

void main() {
  for (int i = 63; i <= 123; i++) {
    if(i % 9 == 0) {
      print(i);
    }
  }
}