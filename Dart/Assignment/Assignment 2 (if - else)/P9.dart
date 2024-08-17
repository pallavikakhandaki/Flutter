//Write a dart program to calculate your grade based on the marks you got in exam. The total marks in the exam were 100

void main(){
  int x = 76;

  if (x < 25){
    print("Your Grade is D");
  } else if (x <= 50){
    print("Your Grade is C");
  } else if (x <= 75) {
    print("Your Grade is B");
  } else if (x <= 100) {
    print("Your Grade is A");
  }
}