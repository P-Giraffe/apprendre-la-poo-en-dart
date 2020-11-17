import 'dart:math';

class Combattant {
  int _sante = 100;
  int _force;

  Combattant(this._force);

  bool get estEnVie => sante > 0;

  int get force => _force;

  int get sante => _sante;
  set sante(int health) {
    _sante = max(0, health);
  }

  void recevoirCoup(int forceDuCoup) {
    sante = sante - forceDuCoup;
  }
}
