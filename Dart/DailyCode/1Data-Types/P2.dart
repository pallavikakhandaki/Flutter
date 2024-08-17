//Double

void main(){
  int x = 10;
  double y = 20.5;

  print(x);
  print(y);

  print(y.runtimeType);

  //x = 50.7;               ERROR - A value of type 'double' can't be assigned to the variable of 'int' type
  y = 20;
  print(x);
  print(y);
}