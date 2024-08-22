//Write a program to print a table of 5 in reverse order

void main() {
  int num = 50;
  while (num >= 1){
    if(num % 5 == 0) {
      print(num);
    }
    num--;
  }
}