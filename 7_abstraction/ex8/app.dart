import 'dart:math';

import 'NE_PAS_TOUCHER/user_input.dart';
import 'bot.dart';
import 'player.dart';

void main() {
  Map<String, Player> playerList = {};
  String nickname;
  do {
    nickname = readText("Entrez votre pseudo :");
    if (nickname.isNotEmpty) {
      final player = playerList[nickname] ?? Player(nickname);
      player.prepareForNewGame();
      startFight(player);
      playerList[nickname] = player;
      displayHallOfFame(playerList.values.toList());
    }
  } while (nickname.isNotEmpty);
}

void displayHallOfFame(List<Player> playerList) {
  playerList.sort((a, b) => b.compareTo(a));
  print("Hall of Fame");
  for (final player in playerList) {
    print("${player.nickname} - ${player.score}");
  }
}

void startFight(Player player) {
  var actionCount = 0;
  var botCount = 0;
  while (player.isAlive) {
    final b1 = Bot(max(1, player.strength - 1));
    print("Un bot se présente à vous et veut se battre...\n");
    var isItPlayerTurn = Random().nextBool();
    do {
      if (isItPlayerTurn) {
        player.attackOrRest(b1);
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
