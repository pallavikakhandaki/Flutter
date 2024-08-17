//Write a dart program to print the BMI(Body Mass Index) status

void main(){
  double bmi = 26.6;

  if (bmi < 18.5){
    print("Underweight");
  } else if (bmi <= 24.9){
    print("Normal");
  } else if (bmi <= 29.9){
    print("Overweight");
  } else if (bmi <= 34.9){
    print("Obese");
  } else {
    print("Extreme Obese");
  }
}