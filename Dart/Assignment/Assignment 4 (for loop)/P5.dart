//Write a program to print the numbers that are divisible by both 4 and 3 in the range 1 to 100

void main() {
  for(int i =1; i <= 100; i++){
    if ((i % 4 ==0) & (i % 3 == 0)) {
      print(i);
    } 
  }
}