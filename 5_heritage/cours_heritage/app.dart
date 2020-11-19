import 'bot.dart';
import 'joueur.dart';

void main() {
  Joueur j1 = Joueur("Ian");
  Bot b1 = Bot(force: 5);
  print("Santé de ${j1.pseudo} : ${j1.sante}");
  b1.attaquer(j1);
  print("Santé du ${j1.pseudo} : ${j1.sante}");
}
