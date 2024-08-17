//Write a program to print the numbers who are not divisble by 4 and their remainder when divided by 4 is 3. Take the numbers from range 20 to 50

void main() {
  for(int i = 20; i <= 50; i++) {
    if((i % 4 != 0) & (i % 4 == 3)) {
      print(i);
    }
  }
}