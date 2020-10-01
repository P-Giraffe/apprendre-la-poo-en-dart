import 'joueur.dart';

void main() {
  final j1 = Joueur();
  j1.pseudo = "Sheldon";
  j1.score = 123;

  print("Joueur ${j1.pseudo}, score ${j1.score}");
}
