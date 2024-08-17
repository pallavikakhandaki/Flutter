//String

void main(){
  String str1 = "Kanha";
  String str2 = "Rahul";

  print(str1);
  print(str2);

  //str1 = 50;                      //Error - a values of type 'string' can't be assigned to the value of int or dobule
  //str2 = 30.5

  str1 = "50";
  str2 = "30.5";

  print(str1);
  print(str2);

  print(str1.runtimeType);
  print(str2.runtimeType);
}