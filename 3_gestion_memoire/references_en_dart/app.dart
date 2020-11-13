void main() {
  Joueur poppy = Joueur("Poppy");
  print("Score : ${poppy.score}");
  augmenterScore(poppy);
  print("Score : ${poppy.score}");

  int a = 10;
  augmenterEntier(a);
  print(a);
}

void augmenterScore(Joueur j) {
  j.score++;
}

void augmenterEntier(int unEntier) {
  unEntier = 3;
}

class Joueur {
  String pseudo;
  int score = 0;

  Joueur(this.pseudo);
}
