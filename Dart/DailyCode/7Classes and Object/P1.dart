class Player {
  int jerNo = 18;
  String pName = "Virat";

  void playerInfo() {
    print(jerNo);
    print(pName);
  }
}

void main() {
  Player obj = Player();
  obj.playerInfo();
  print(obj.runtimeType);
}