import 'dart:math';

import 'NE_PAS_TOUCHER/user_input.dart';
import 'app.dart';
import 'bot.dart';
import 'weapon.dart';
import 'weapon_list_manager.dart';

class Player {
  final String _nickname;
  int _strength = 1;
  int _health = 100;
  Weapon _weapon = const Weapon("Batte de baseball", 1, 100);
  final _weaponListManager = WeaponListManager();

  Player(this._nickname);

  String get nickname => _nickname;
  bool get isAlive => health > 0;

  int get strength => _strength;
  set strength(int strength) {
    _strength = max(0, strength);
  }

  int get health => _health;
  set health(int health) {
    _health = max(0, health);
  }

  void displayYourData() {
    print("${this.nickname} - ${this.health}% - Force : ${this.strength}");
  }

  void attackOrRest(Bot bot) {
    int userChoice = 1;
    if (this.health < 40) {
      userChoice = selectFromMenu(
          '''${this.nickname}, - ${this.health}%, quelle action souhaitez vous faire :
        1 - Attaquer le bot
        2 - Vous reposer pour récupérer de la santé
      ''', 2);
    } else {
      readText("Appuyez sur entrée pour lancer les dés et attaquer le bot");
    }

    if (userChoice == 1) {
      _attack(bot);
    } else {
      raiseHealth(0.75);
    }
  }

  void _attack(Bot bot) {
    final randomPercent = Random().nextInt(100) + 1;
    if (randomPercent <= _weapon.accuracy) {
      final dicesValue = rollDices(this.nickname);
      final hitStrength = dicesValue * (strength + _weapon.power);
      print(
          "$nickname frappe le bot avec l'arme ${_weapon.name} et une force de $hitStrength");
      bot.health = bot.health - hitStrength;
    } else {
      print("$nickname a manqué le bot lors de son coup");
    }
  }

  void didWin(Bot bot) {
    this.strength = this.strength + bot.strength;
    final newWeapon = _weaponListManager.getNextWeaponToLoot();
    if (newWeapon != null) {
      final pickWeaponChoice = selectFromMenu(
          "Le bot a laissé tomber une arme (${newWeapon.description}), tapez 1 pour la ramasser ou 2 pour conserver votre arme actuelle (${_weapon.description})",
          2);
      if (pickWeaponChoice == 1) {
        _weapon = newWeapon;
      }
    }
    raiseHealth(0.9);
  }

  void raiseHealth(double factor) {
    final gain = this.health * factor;
    this.health = min(100, this.health + gain.toInt());
  }
}
