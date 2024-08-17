//Standard Out (stdout)
//stdout.write = write a line in same line there is no next line
//stdout.writeln 
//stdout.writeAll


import "dart:io";

void main() {
  stdout.write("Hello dart");
  stdout.writeln("Hello dart");

  List Playes = ["Shubman", "Shreyash", "Chahal"];
  stdout.writeAll(Playes, ",");
}