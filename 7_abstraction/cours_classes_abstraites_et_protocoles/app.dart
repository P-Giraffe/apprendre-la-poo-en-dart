import 'bot.dart';

void main() {
  final groupeDeBot = [
    Bot(force: 4),
    Bot(force: 5),
    Bot(force: 2),
    Bot(force: 8)
  ];
  groupeDeBot.sort();
  for (var bot in groupeDeBot) {
    bot.afficherInfos();
    bot.fonctionSecrete();
  }
}
