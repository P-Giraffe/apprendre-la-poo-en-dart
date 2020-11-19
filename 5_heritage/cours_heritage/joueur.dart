import 'dart:math';
import 'bot.dart';
import 'combattant.dart';

class Joueur extends Combattant {
  final String _pseudo;

  Joueur(this._pseudo) : super(1);

  String get pseudo => _pseudo;

  void attaquer(Bot bot) {
    print("${this.pseudo} attaque le bot avec une force de $force");
    bot.recevoirCoup(force);
  }

  @override
  void recevoirCoup(int forceDuCoup) {
    super.recevoirCoup(forceDuCoup);
    print("Aie!");
  }
}
