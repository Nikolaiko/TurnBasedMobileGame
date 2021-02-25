enum UnitAnimationType {
  idle,
  move,
  attack,
  die
}

extension ParseToString on UnitAnimationType {
  String getName() {
    return toString().substring(toString().indexOf('.') + 1);
  }  
}