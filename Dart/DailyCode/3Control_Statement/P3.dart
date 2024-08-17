//if - else - if

void main(){
  int percentage = 60;

  if (percentage > 90){
    print("Distinction");
  } else if (percentage >= 75){
    print("Very Good");
  } else if (percentage >= 60){
    print("Good");
  } else if (percentage >= 35){
    print("Pass");
  } else{
    print("Fail");
  }
}