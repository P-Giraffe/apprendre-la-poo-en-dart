import 'combattant.dart';
import 'joueur.dart';

class Bot extends Combattant {
  Bot({int force = 1}) : super(force) {}

  void attaquer(Joueur player) {
    print("Le Bot attaque ${player.pseudo} avec une force de $force");
    player.recevoirCoup(force);
  }
}
