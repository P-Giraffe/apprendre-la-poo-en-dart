class Joueur {
  String pseudo = "";
  int score = 0;

  void direBonjour() {
    print(
        "Bonjour, je suis ${this.pseudo} et voici mes points : ${this.score}");
    print("Niveau : ${this.niveau}");
  }

  int get niveau => (score / 100).truncate();
  set niveau(int nvNiveau) {
    score = nvNiveau * 100;
  }
}
