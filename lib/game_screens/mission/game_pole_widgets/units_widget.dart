import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:turn_based_game/const/map_consts.dart';
import 'package:turn_based_game/game_screens/mission/factories/unit_factory.dart';
import 'package:turn_based_game/game_screens/mission/state/game_state.dart';
import 'package:turn_based_game/model/mission/conflict_side.dart';
import 'package:turn_based_game/model/mission/unit.dart';
import 'package:turn_based_game/model/mission/unit_action.dart';
import 'package:turn_based_game/model/mission/unit_animation_type.dart';

class UnitsWidget extends StatefulWidget {
  @override
  _UnitsWidgetState createState() => _UnitsWidgetState();
}

class _UnitsWidgetState extends State<UnitsWidget> with SingleTickerProviderStateMixin { 
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
      height: MapConsts.TILE_SIDE * _state.missionMap.length,
      width: MapConsts.TILE_SIDE * _state.missionMap.first.length,
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
    List<Widget> units = [];    
    for (final Unit unit in _state.missionUnits) {      
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
                    left: destCol == col ? MapConsts.TILE_SIDE * col : MapConsts.TILE_SIDE * col + _animation.value,
                    top: destRow == row ? MapConsts.TILE_SIDE * row : MapConsts.TILE_SIDE * row + _animation.value,
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
      left: MapConsts.TILE_SIDE * unit.column,
      top: MapConsts.TILE_SIDE * unit.row,
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

  Animation<double> _buildMoveAnimationTween(int startRow, int startCol, int endRow, int endCol) {
    double endValue = 0.0;
    if (startRow == endRow) {
      endValue = (MapConsts.TILE_SIDE * (endCol - startCol)).toDouble();
    } else {
      endValue = (MapConsts.TILE_SIDE * (endRow - startRow)).toDouble();
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