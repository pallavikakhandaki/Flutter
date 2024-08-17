//Write a dart program that takes a number from range 0 to 5 and prints its spelling if the number is greater than 5, then print entered number is greater than 5

void main(){
  var x = 4;
  
  if (x <= 5){
    switch(x){
      case 1 :
            print("One");
      case 2 :
            print("Two");
      case 3 :
            print("Three");
      case 4 :
            print("Four");
      case 5 :
            print("Five");
    }
  } else{
    print("$x is greater than 5");
  }
}