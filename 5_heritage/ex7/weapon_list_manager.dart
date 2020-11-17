import 'weapon.dart';

class WeaponListManager {
  final _weaponList = const [
    Weapon("Fusil à pompe", 2, 75),
    Weapon("Bazooka", 3, 50),
    Weapon("Bombe banane", 4, 40),
    Weapon("Mouton", 6, 10)
  ];

  var _nextWeaponIndex = 0;

  Weapon getNextWeaponToLoot() {
    Weapon nextWeapon;
    if (_nextWeaponIndex < _weaponList.length) {
      nextWeapon = _weaponList[_nextWeaponIndex];
      _nextWeaponIndex++;
    }
    return nextWeapon;
  }
}
