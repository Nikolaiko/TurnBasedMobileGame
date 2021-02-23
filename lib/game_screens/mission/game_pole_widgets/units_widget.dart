import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../const/map_consts.dart';
import '../../../model/mission/conflict_side.dart';
import '../../../model/mission/unit.dart';
import '../../../model/mission/unit_action.dart';
import '../../../model/mission/unit_animation_type.dart';
import '../factories/unit_factory.dart';
import '../state/game_state.dart';

///Widget for displaying all units on map
class UnitsWidget extends StatefulWidget {
  @override
  _UnitsWidgetState createState() => _UnitsWidgetState();
}

class _UnitsWidgetState extends State<UnitsWidget> 
                  with SingleTickerProviderStateMixin { 
  final  UnitFactory _factory = UnitFactory(); 
  GameState _state;
  AnimationController _controller;
  Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800)
    ); 

    _controller.addStatusListener( (status) {
      if (status == AnimationStatus.completed) {
        _state.actionDone();
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
    var units = [];    
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
                      )                      
                    ),
                  );
                }
              )
            );                          
          } else {
            units.add(_buildUnitWidget(unit));  
          }
        },
        orElse: () {
          units.add(_buildUnitWidget(unit));
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
          flipped: unit.conflictSide == ConflictSide.enemy
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