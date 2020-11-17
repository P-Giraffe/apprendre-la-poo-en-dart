import 'bot.dart';
import 'combattant.dart';

class Joueur extends Combattant {
  final String _pseudo;

  Joueur(this._pseudo);

  String get pseudo => _pseudo;

  void attaquer(Bot bot) {
    print("$pseudo attaque le bot");
    bot.recevoirCoup(force);
  }
}
