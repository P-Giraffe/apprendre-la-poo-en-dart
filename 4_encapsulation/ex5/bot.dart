import 'dart:math';
import 'app.dart';
import 'player.dart';

class Bot {
  int _health = 100;
  final int _strength;

  Bot(this._strength);
  int get strength => _strength;

  int get health => _health;
  set health(int health) {
    _health = max(0, health);
  }

  void displayYourData() {
    print("Bot - ${health}% - Force : ${strength}");
  }

  void attackPlayer(Player player) {
    final dicesValue = rollDices("Le Bot");
    final hitStrength = dicesValue * strength;
    player.health -= hitStrength;
  }
}
