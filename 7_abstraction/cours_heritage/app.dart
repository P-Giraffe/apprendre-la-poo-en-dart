import 'bot.dart';
import 'joueur.dart';

void main() {
  Joueur j1 = Joueur("Ian");
  Bot b1 = Bot(force: 5);
  j1.afficherInfos();
  b1.attaquer(j1);
  j1.afficherInfos();
}
