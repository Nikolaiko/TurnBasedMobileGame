import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:turn_based_game/const/map_consts.dart';
import 'package:turn_based_game/game_screens/mission/factories/unit_factory.dart';
import 'package:turn_based_game/game_screens/mission/state/game_state.dart';
import 'package:turn_based_game/model/mission/enums/conflict_side.dart';
import 'package:turn_based_game/model/mission/unit.dart';
import 'package:turn_based_game/model/mission/unit_action.dart';
import 'package:turn_based_game/model/mission/enums/unit_animation_type.dart';

class UnitsWidget extends StatefulWidget {
  @override
  _UnitsWidgetState createState() => _UnitsWidgetState();
}

class _UnitsWidgetState extends State<UnitsWidget> 
                  with SingleTickerProviderStateMixin { 
  final  UnitFactory _factory = UnitFactory(); 
  late GameState _state;
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800)
    ); 

    _controller.addStatusListener( (status) {
      if (status == AnimationStatus.completed) {
        _state.actionDone(UnitAnimationType.move);
      }
    });  
  }

  @override
  Widget build(BuildContext context) {
    _state = Provider.of<GameState>(context, listen: false);
    return SizedBox(      
      height: MapConsts.tileSide * _state.missionMap.length,
      width: MapConsts.tileSide * _state.missionMap.first.length,
      child: StreamBuilder<Object>(
        initialData: const UnitAction.empty(),
        stream: _state.actionsStream,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Stack(
              children: _buildUnitsStack(snapshot.data as UnitAction)
            );
          } else {
            return const SizedBox.shrink();
          }         
        }
      ),
    );
  }

  List<Widget> _buildUnitsStack(UnitAction action) {    
    var units = List<Widget>.empty(growable: true);    
    print(action);
    for (var unit in _state.missionUnits) {            
      action.maybeWhen(
        move: (actionUnit, destRow, destCol, row, col) {
          if (unit == actionUnit) {            
            _animation = _buildMoveAnimationTween(row, col, destRow, destCol);
            _controller.forward(from: 0);
            units.add(
              AnimatedBuilder(
                animation: _controller,
                builder: (context, child) {
                  return Positioned(                                  
                    left: destCol == col 
                      ? MapConsts.tileSide * col 
                      : MapConsts.tileSide * col + _animation.value,
                    top: destRow == row 
                      ? MapConsts.tileSide * row 
                      : MapConsts.tileSide * row + _animation.value,
                      child: GestureDetector(
                        onTap: () {
                          _state.unitTap(unit);
                        },
                      child: _factory.buildUnit(
                        unit.type, 
                        unit.conflictSide,
                        UnitAnimationType.move,
                        flipped: destCol < col
                      ),
                    )
                  );
                }
              )
            );                          
          } else {
            units.add(_buildUnitWidget(unit));  
          }
          return Object();
        },
        attack: (attackingUnit, attackedUnit, mirrored) {
          if (unit == attackingUnit) {     
            units.add(
              Positioned(
                left: MapConsts.tileSide * attackingUnit.column,
                top: MapConsts.tileSide * attackingUnit.row,
                child: _factory.buildUnit(
                  attackingUnit.type, 
                  attackingUnit.conflictSide,
                  UnitAnimationType.attack,
                  animationCallback: () {                    
                    _state.actionDone(
                      UnitAnimationType.attack, 
                      targetUnit: unit
                    );
                  }
                )
              )
            );                        
          } else if (unit == attackedUnit) {
            units.add(
              Positioned(                                  
                left: MapConsts.tileSide * unit.column,
                top: MapConsts.tileSide * unit.row,
                child: _factory.buildUnit(
                  unit.type, 
                  unit.conflictSide,
                  UnitAnimationType.idle,
                  flipped: mirrored,
                  alreadyMoved: unit.alreadyMoved
                )
              )
            );  
          } else {
            units.add(_buildUnitWidget(unit));
          }
          return Object();
        },
        die: (attackedUnit, mirrored) {
          if (unit == attackedUnit) {            
            units.add(
              Positioned(                                  
                left: MapConsts.tileSide * unit.column,
                top: MapConsts.tileSide * unit.row,
                child: _factory.buildUnit(
                  unit.type, 
                  unit.conflictSide,
                  UnitAnimationType.die,              
                  alreadyMoved: unit.alreadyMoved,
                  flipped: mirrored,
                  animationCallback: () {                     
                    _state.actionDone(
                      UnitAnimationType.die,
                      targetUnit: unit
                    ); 
                  }
                )
              )
            );
          } else {
            units.add(_buildUnitWidget(unit));
          }
        },
        orElse: () {
          units.add(_buildUnitWidget(unit));
          return Object();
        } 
      );        
    }
    return units;
  }

  Widget _buildUnitWidget(Unit unit) {
    return Positioned(                                  
      left: MapConsts.tileSide * unit.column,
      top: MapConsts.tileSide * unit.row,
      child: GestureDetector(
        onTap: () {
          _state.unitTap(unit);
        },
        child: _factory.buildUnit(
          unit.type, 
          unit.conflictSide,
          UnitAnimationType.idle,
          flipped: unit.conflictSide == ConflictSide.enemy,
          alreadyMoved: unit.alreadyMoved
        )   
      ),
    );
  }

  Animation<double> _buildMoveAnimationTween(
    int startRow, 
    int startCol, 
    int endRow, 
    int endCol
  ) {
    var endValue = 0.0;
    if (startRow == endRow) {
      endValue = (MapConsts.tileSide * (endCol - startCol)).toDouble();
    } else {
      endValue = (MapConsts.tileSide * (endRow - startRow)).toDouble();
    }

    return Tween<double>(
      begin: 0, 
      end: endValue
    ).animate(_controller);    
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}