void main() {
  final listeDesScores = [125, 245, 87, 96, 324];
  afficheLesPremiers(listeDesScores, nombreDeVainqueurs: 30);
  print("Félicitation aux vainqueurs");
}

void afficheLesPremiers(List<int> scores, {int nombreDeVainqueurs = 1}) {
  final scoresTries = List<int>.from(scores);
  scoresTries.sort((a, b) => b.compareTo(a));
  try {
    for (var i = 0; i < nombreDeVainqueurs; i++) {
      print(scoresTries[i]);
    }
    print("Affichage terminé");
  } on RangeError catch (e) {
    print(
        "Il n'y a pas assez de participants (${e.end + 1}) pour afficher $nombreDeVainqueurs gagnants");
  } catch (e) {
    print(e);
  }
}
