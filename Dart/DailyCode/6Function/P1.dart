//Nested function

void fun() {
  print("Start fun");
  void run() {
    print("In Run");
  }
  run();
  print("End fun");
}

void main() {
  print("Start Code");
  fun();
  print("End code");
}