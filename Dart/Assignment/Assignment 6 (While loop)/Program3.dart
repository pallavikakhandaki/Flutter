//Write a program to print the countdown of days to submit the assignment


import "dart:io";

void main() {
  int days = int.parse(stdin.readLineSync()!);
  while(days >= 0) {
    if (days > 1) {
      print("$days days remaining");
    } else if (days == 1) {
      print("$days day remaining");
    } else if(days == 0){
      print("$days days Assignment is Overdue");
    }
    days --;
  }
}