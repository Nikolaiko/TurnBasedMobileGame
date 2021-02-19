enum UnitType {
  infranty,
  rocket_infranty,
  motocycle,
  tank
}

extension ParseToString on UnitType {
  String getName() {
    return toString().substring(this.toString().indexOf('.') + 1);
  }  
}