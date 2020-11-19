import 'dart:io';
import 'dart:math';

import 'NE_PAS_TOUCHER/user_input.dart';
import 'app.dart';
import 'bot.dart';
import 'fighter.dart';
import 'weapon.dart';
import 'weapon_list_manager.dart';

class Player extends Fighter {
  final String _nickname;
  Weapon _weapon = const Weapon("Batte de baseball", 1, 100);
  final _weaponListManager = WeaponListManager();

  Player(this._nickname) : super(1);

  String get nickname => _nickname;

  @override
  void displayYourData() {
    print("${this.nickname} - ");
    super.displayYourData();
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
}
