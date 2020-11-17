import 'dart:math';
import 'app.dart';
import 'fighter.dart';
import 'player.dart';

class Bot extends Fighter {
  Bot(int strength) : super(strength);

  @override
  void displayYourData() {
    print("\n|------ Bot ------|");
    super.displayYourData();
  }

  void attackPlayer(Player player) {
    final dicesValue = rollDices("Le Bot");
    final hitStrength = dicesValue * strength;
    player.health -= hitStrength;
  }
}
