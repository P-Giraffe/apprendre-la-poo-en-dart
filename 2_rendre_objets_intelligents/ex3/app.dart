import 'dart:math';

import 'NE_PAS_TOUCHER/user_input.dart';
import 'bot.dart';
import 'player.dart';

void main() {
  final b1 = Bot();
  final player = Player();
  player.nickname = readText("Entrez votre pseudo :");
  var actionCount = 0;
  var botCount = 0;
  while (player.isAlive) {
    print("Un bot se présente à vous et veut se battre...\n");
    var isItPlayerTurn = Random().nextBool();
    do {
      if (isItPlayerTurn) {
        player.attackBot(b1);
      } else {
        b1.attackPlayer(player);
      }

      b1.displayYourData();
      player.displayYourData();
      actionCount++;
      print("Fin du tour $actionCount\n");
      isItPlayerTurn = !isItPlayerTurn;
    } while (b1.health > 0 && player.isAlive);

    if (player.isAlive) {
      print("${player.nickname} a vaincu le bot !");
      player.didWin(b1);
      botCount++;
    }
  }

  print("${player.nickname} a vaincu ${botCount} bot(s) avant d'être terrassé");
}

int rollDices(String playerName) {
  final generator = Random();
  final randomNumber = generator.nextInt(6) + 1 + generator.nextInt(6) + 1;
  print("$playerName a lancé les dés et a obtenu la valeur $randomNumber");
  return randomNumber;
}
