import 'joueur.dart';

void main() {
  Joueur poppy = Joueur("Poppy");
  poppy.afficherInfos();
  poppy.score = poppy.score + 20;
  poppy.afficherInfos();
  poppy.score = poppy.score - 20;
  poppy.afficherInfos();
  poppy.score = poppy.score - 20;
  poppy.afficherInfos();
}
