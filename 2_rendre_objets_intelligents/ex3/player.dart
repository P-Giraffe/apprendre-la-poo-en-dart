import 'NE_PAS_TOUCHER/user_input.dart';
import 'app.dart';
import 'bot.dart';

class Player {
  String nickname = "";
  int strength = 1;
  int health = 100;

  void displayYourData() {
    print("${this.nickname} - ${this.health}% - Force : ${this.strength}");
  }

  void attackBot(Bot bot) {
    readText("Appuyez sur entrée pour lancer les dés");
    final dicesValue = rollDices(this.nickname);
    final hitStrength = dicesValue * strength;
    bot.health = bot.health - hitStrength;
  }

  void didWin(Bot bot) {
    this.strength = this.strength + bot.strength;
  }
}
