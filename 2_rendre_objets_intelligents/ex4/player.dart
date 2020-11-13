import 'dart:math';

import 'NE_PAS_TOUCHER/user_input.dart';
import 'app.dart';
import 'bot.dart';

class Player {
  final String nickname;
  int strength = 1;
  int health = 100;

  Player(this.nickname);

  bool get isAlive => health > 0;

  void displayYourData() {
    print("${this.nickname} - ${this.health}% - Force : ${this.strength}");
  }

  void attackBot(Bot bot) {
    int choixUtilisateur = 1;
    if (this.health < 40) {
      do {
        print(
            "${this.nickname}, - ${this.health}%, quelle action souhaitez vous faire :");
        print("1 - Attaquer le bot");
        print("2 - Vous reposer pour récupérer de la santé");
        choixUtilisateur = readInt("Quel est votre choix ?");
      } while (choixUtilisateur < 1 || choixUtilisateur > 2);
    } else {
      readText("Appuyez sur entrée pour lancer les dés et attaquer le bot");
    }

    if (choixUtilisateur == 1) {
      final dicesValue = rollDices(this.nickname);
      final hitStrength = dicesValue * strength;
      bot.health = bot.health - hitStrength;
    } else {
      raiseHealth(0.75);
    }
  }

  void didWin(Bot bot) {
    this.strength = this.strength + bot.strength;
    raiseHealth(0.9);
  }

  void raiseHealth(double factor) {
    final gain = this.health * factor;
    this.health = min(100, this.health + gain.toInt());
  }
}
