//write a program to rpint the numbers in range 1 to 10 but skip the print statemnet when number is 5

void main() {
  int i = 1;

  while (i <= 10) {
    if (i == 5) {
      i++; 
      continue; 
    }
    print(i);
    i++;
  }
}
