//Write a dart program to check whether the number is divisible by 3 & 5

void main(){
  var x = 9;

  if ((x % 3 == 0) & (x % 5 == 0)){
    print("Divisible by both");
  } else if (x % 3 == 0) {
    print("Divisible by 3");
  } else if (x % 5 == 0) {
    print("Divisible by 5");
  } else {
    print("Not divisible by 3 or 5");
  }
}