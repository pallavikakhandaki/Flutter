//Dynamic 
//Same as the var but difference is -  Dynamic madhe ekda store kelela data type change hou shakto jas var madhe ekda 
//store kelela data type change nahi hou shakat

void main(){
  dynamic x = "Kanha";
  dynamic y = 10.5;
  dynamic z = 25;
  dynamic a = false;

  print(x);
  print(y);
  print(z);
  print(a);

  x = 10;                         //x madhe string type cha data store kela hota pn atta apan tya madhe int type cha data thevat aahe 
  print(x);                       //mahnje dynamic madhe apan data type change karu shakto 
}                                
  