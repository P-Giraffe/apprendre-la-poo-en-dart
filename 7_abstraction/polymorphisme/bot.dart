import 'combattant.dart';
import 'joueur.dart';

abstract class MonProtocole {
  void fonctionSecrete();
}

class Bot extends Combattant implements Comparable<Bot>, MonProtocole {
  Bot({int force = 1}) : super(force) {}

  void attaquer(Joueur player) {
    print("Le Bot attaque ${player.pseudo} avec une force de $force");
    player.recevoirCoup(force);
  }

  @override
  void afficherInfos() {
    print("Bot - Santé $sante% - Force $force");
  }

  @override
  int compareTo(Bot other) {
    return this.force.compareTo(other.force);
  }

  @override
  void fonctionSecrete() {
    // TODO: implement fonctionSecrete
  }
}
