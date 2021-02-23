enum UnitType {
  infranty,
  rocket_infranty,
  motocycle,
  tank
}

extension ParseToString on UnitType {
  String getName() {
    return toString().substring(toString().indexOf('.') + 1);
  }  
}