import 'dart:math';

class Fighter {
  int _health = 100;
  final int _strength;

  Fighter(this._strength);
  int get strength => _strength;

  int get health => _health;
  set health(int health) {
    _health = max(0, health);
  }

  bool get isAlive => health > 0;

  void displayYourData() {
    print("${health}% - Force : ${strength}");
  }

  void raiseHealth(double factor) {
    final gain = this.health * factor;
    this.health = min(100, this.health + gain.toInt());
  }
}
