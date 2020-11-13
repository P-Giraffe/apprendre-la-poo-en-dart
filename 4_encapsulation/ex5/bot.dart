import 'app.dart';
import 'player.dart';

class Bot {
  int health = 100;
  final int strength;

  Bot(this.strength);

  void displayYourData() {
    print("Bot - ${health}% - Force : ${strength}");
  }

  void attackPlayer(Player player) {
    final dicesValue = rollDices("Le Bot");
    final hitStrength = dicesValue * strength;
    player.health -= hitStrength;
  }
}
