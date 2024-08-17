//Optional Parameters and Default Parameters

void main() {
  playerInfo(18,"Virat");
  playerInfo(17,"ABD","SA");
  playerInfo(7,"MSD");
}

void playerInfo(int jerNo, String playerName, [String? Country = "India"]) {
  print("Jersy no : $jerNo, Player Name : $playerName, Country : $Country");
}