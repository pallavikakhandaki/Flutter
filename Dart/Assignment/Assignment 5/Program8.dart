//Write a program to print the product of odd digits between 10 to 1

void main() {
  int num = 10;
  int product = 1;

  while (num >= 1) {
    if(num % 2 != 00) {
      product = product * num;
    }
    num--;
  }
  print(product);
}