class Joueur {
  String pseudo;
  int score;

  Joueur(this.pseudo, {this.score = 0});

  Joueur.anonyme() {
    this.pseudo = "Anonyme";
    this.score = 0;
  }

  static void rollDices() {
    print("Lancé de dés...");
  }

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
