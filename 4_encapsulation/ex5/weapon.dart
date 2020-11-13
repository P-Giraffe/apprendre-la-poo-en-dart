class Weapon {
  final String name;
  final int power;
  final int accuracy;

  const Weapon(this.name, this.power, this.accuracy);

  String get description =>
      "$name - Puissance : $power - Précision : $accuracy%";
}
