// Lambda Function or Anonymous function

var add = (int x, int y) {
  print("In add fun");
  return x+y;
};

void main() {
  print(add.runtimeType);
  print(add(10,20));
}