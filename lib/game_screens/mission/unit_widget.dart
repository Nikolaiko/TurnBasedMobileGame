import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:turn_based_game/const/map_consts.dart';

class UnitWidget extends StatefulWidget {
  final List<String> animationFrames;
  final bool flip;

  const UnitWidget(this.animationFrames, { this.flip = false });

  @override
  _UnitWidgetState createState() => _UnitWidgetState();
}

class _UnitWidgetState extends State<UnitWidget>  with SingleTickerProviderStateMixin {
  Animation<double> _animation;
  AnimationController _controller;  
  
  @override
  void initState() {
    super.initState();
    
    _controller = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this
    );
    _controller.repeat();

    _animation = Tween<double>(
      begin: 0, 
      end: (widget.animationFrames.length - 1).toDouble(),
    ).animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {        
        return Transform(
          alignment: Alignment.center,
          transform: widget.flip ? Matrix4.rotationY(math.pi) : Matrix4.rotationY(0),
          child: Image.asset(
            widget.animationFrames[_animation.value.toInt()],
            fit: BoxFit.scaleDown,
            width: MapConsts.TILE_SIDE,
            height: MapConsts.TILE_SIDE,
            gaplessPlayback: true,
          ),
        );
      }
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}