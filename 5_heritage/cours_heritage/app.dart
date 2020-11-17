import 'bot.dart';
import 'joueur.dart';

void main() {
  Bot j1 = Bot(force: 2);
  print(j1.force);
  j1.recevoirCoup(1);
  print(j1.sante);
}
