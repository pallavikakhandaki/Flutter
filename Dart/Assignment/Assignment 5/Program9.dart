//Write a program to print the countdown of days to submit the assignment

import 'dart:io';

void main() {
  int numDays = int.parse(stdin.readLineSync()!);
  while (numDays >= 0) {
    if (numDays >= 2) {
      print("$numDays days remaining");
    } else if (numDays == 1) {
      print("$numDays day remaining");
    } else {
      print("$numDays days Assignment is Overdue");
    }
    numDays--;
  }
}