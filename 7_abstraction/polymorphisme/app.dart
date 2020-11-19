import 'dart:math';

import 'bot.dart';
import 'combattant.dart';
import 'joueur.dart';

void main() {
  Combattant c;
  if (Random().nextInt(100) > 50) {
    c = Joueur("Ian");
  } else {
    c = Bot(force: 4);
  }
  c.afficherInfos();
}
