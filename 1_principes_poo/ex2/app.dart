import 'dart:math';

import 'NE_PAS_TOUCHER/user_input.dart';
import 'bot.dart';
import 'player.dart';

void main() {
  final b1 = Bot();
  final player = Player();
  player.nickname = readText("Entrez votre pseudo :");
  var actionCount = 0;
  print("Un bot se présente à vous et veut se battre...\n");
  var isItPlayerTurn = Random().nextBool();
  do {
    if (isItPlayerTurn) {
      attackBot(player, b1);
    } else {
      attackPlayer(b1, player);
    }

    displayBot(b1);
    displayPlayer(player);
    actionCount++;
    print("Fin du tour $actionCount\n");
    isItPlayerTurn = !isItPlayerTurn;
  } while (b1.health > 0 && player.health > 0);

  if (player.health > 0) {
    print("${player.nickname} a vaincu le bot !");
  } else {
    print("${player.nickname} a été terrassé par le bot !");
  }
}

int rollDices(String playerName) {
  final generator = Random();
  final randomNumber = generator.nextInt(6) + 1 + generator.nextInt(6) + 1;
  print("$playerName a lancé les dés et a obtenu la valeur $randomNumber");
  return randomNumber;
}

void displayPlayer(Player p) {
  print("${p.nickname} - ${p.health}% - Force : ${p.strength}");
}

void displayBot(Bot b) {
  print("Bot - ${b.health}% - Force : ${b.strength}");
}

void attackBot(Player player, Bot bot) {
  readText("Appuyez sur entrée pour lancer les dés");
  final dicesValue = rollDices(player.nickname);
  bot.health = bot.health - dicesValue;
}

void attackPlayer(Bot bot, Player player) {
  final dicesValue = rollDices("Le Bot");
  player.health -= dicesValue;
}
