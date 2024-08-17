//Bitwise Operator

void main(){
  int x = 8;            //00000111
  int y = 5;            //00000101

  print(x & y);         
  print(x | y);        
  
  x = 12;
  y = 10;

  print(x & y);

  x = 7;
  y = 14;

  print(x & y);
  print(x | y);
  print(x ^ y);
  print(x << 2);
  print(x >> 2);
}