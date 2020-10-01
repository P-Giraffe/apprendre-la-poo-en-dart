import 'dart:math';

import 'NE_PAS_TOUCHER/user_input.dart';
import 'bot.dart';

void main() {
  final b1 = Bot();
  final username = readText("Entrez votre pseudo :");
  var actionCount = 0;
  print("Un bot se présente à vous et veut se battre...\n");
  do {
    readText("Appuyez sur entrée pour lancer les dés");
    final dicesValue = rollDices(username);
    b1.health = b1.health - dicesValue;
    print("Bot - ${b1.health}% \n");
    actionCount++;
    print("Fin du tour $actionCount\n");
  } while (b1.health > 0);

  print("Le bot a été vaincu !");
}

int rollDices(String playerName) {
  final generator = Random();
  final randomNumber = generator.nextInt(6) + 1 + generator.nextInt(6) + 1;
  print("$playerName a lancé les dés et a obtenu la valeur $randomNumber");
  return randomNumber;
}
