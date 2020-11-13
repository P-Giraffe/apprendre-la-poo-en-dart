import 'NE_PAS_TOUCHER/user_input.dart';
import 'player.dart';

void main() {
  final j1 = Joueur("Ian", score: 120);
  j1.niveau = 3;
  j1.direBonjour();

  final j2 = Joueur("Poppy");
  j2.score = 221;
  j2.direBonjour();

  final j3 = Joueur.anonyme();

  Joueur.rollDices();
}
