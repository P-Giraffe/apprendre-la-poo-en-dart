import 'dart:io';

String readText(String question) {
  print(question);
  return stdin.readLineSync();
}

int readInt(String question) {
  int typedValue;
  do {
    typedValue = int.tryParse(readText(question));
    if (typedValue == null) {
      print("Veuillez saisir un nombre entier valide.");
    }
  } while (typedValue == null);
  return typedValue;
}

double readDouble(String question) {
  double typedValue;
  do {
    typedValue = double.tryParse(readText(question));
    if (typedValue == null) {
      print("Veuillez saisir un nombre réel valide.");
    }
  } while (typedValue == null);
  return typedValue;
}

int selectFromMenu(String message, int max) {
  int userChoice;
  do {
    print(message);
    userChoice = readInt("Quel est votre choix ?");
    if (userChoice < 1 || userChoice > max) {
      print("Veuillez choisir une valeur comprise entre 1 et $max");
    }
  } while (userChoice < 1 || userChoice > max);
  return userChoice;
}
