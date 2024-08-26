//Lambda function 2nd example


var add = (int x, int y) {
  print("In fun");
  return x+y;
};

void main() {
  print(add.runtimeType);
  // print(add(10,20));
}