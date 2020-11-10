class Player {
  String nickname = "";
  int strength = 1;
  int health = 100;

  void displayYourData() {
    print("${this.nickname} - ${this.health}% - Force : ${this.strength}");
  }
}
