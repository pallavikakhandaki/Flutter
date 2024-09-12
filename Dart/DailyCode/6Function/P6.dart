var add = (int x, int y) {
  print("In lambda function");
  return x+y;
};

int fun(int x, int y) {
  print("In normal function");
  return x+y;
}

void main() {
  print(fun(10,20));
  print(add(30,40));

  print(add.runtimeType);
  print(fun.runtimeType);
  print(identityHashCode(fun));
  print(identityHashCode(add));
  print(fun.hashCode);
  print(add.hashCode);
}