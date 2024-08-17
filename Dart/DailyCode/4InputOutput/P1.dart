/*readLineSync() - This is the method in dart to use the take input from the user with the help of keyboard
Sync - without input they can't move forword
2 Data types in dart - Nullable and Non nullable
nullable = String, int 
non -nullable - String?, int?

To take input from the user import "dart:io" file from dart
from that file stdin class use readLineSync() method

$ = String interpolation when we want to print the given number in output then this symbol is use
 */

import "dart:io";

void main() {
  String? pName;
  print("Enter Name : ");
  pName = stdin.readLineSync();
  print("you entered : $pName");
}