import 'NE_PAS_TOUCHER/user_input.dart';
import 'player.dart';

void main() {
  final j1 = Joueur();
  j1.pseudo = "Ian";
  j1.score = 120;
  j1.niveau = 3;
  j1.direBonjour();

  final j2 = Joueur();
  j2.pseudo = "Poppy";
  j2.score = 221;
  j2.direBonjour();
}
