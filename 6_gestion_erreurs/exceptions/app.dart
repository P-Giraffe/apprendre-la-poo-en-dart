void main() {
  final listeDesScores = [125, 245, 87, 96, 324];
  afficheLesPremiers(listeDesScores, nombreDeVainqueurs: 10);
  print("Félicitation aux vainqueurs");
}

void afficheLesPremiers(List<int> scores, {int nombreDeVainqueurs = 1}) {
  final scoresTries = List<int>.from(scores);
  scoresTries.sort((a, b) => b.compareTo(a));
  for (var i = 0; i < nombreDeVainqueurs; i++) {
    print(scoresTries[i]);
  }
}
