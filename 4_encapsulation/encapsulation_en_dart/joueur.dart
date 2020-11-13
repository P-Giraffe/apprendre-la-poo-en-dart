import 'dart:math';

class Joueur {
  String pseudo;
  int _score = 0;

  int get score => _score;

  set score(int score) {
    _score = max(0, score);
  }

  Joueur(this.pseudo);

  void afficherInfos() {
    print("$pseudo : $score points");
  }
}
