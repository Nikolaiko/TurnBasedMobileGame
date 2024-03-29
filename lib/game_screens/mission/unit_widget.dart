import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:turn_based_game/const/map_consts.dart';


class UnitWidget extends StatefulWidget {
  final List<String> animationFrames;
  final int durationMs;
  final bool flip;
  final bool alreadyMoved;
  final VoidCallback? animationCallback;

  const UnitWidget(
    this.animationFrames,
    this.durationMs,
    { 
      this.flip = false,
      this.alreadyMoved = false,
      this.animationCallback
    });

  @override
  _UnitWidgetState createState() => _UnitWidgetState();
}

class _UnitWidgetState extends State<UnitWidget>  
                       with SingleTickerProviderStateMixin {
  late Animation<double> _animation;
  late AnimationController _controller;  
  
  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: Duration(milliseconds: widget.durationMs),
      vsync: this
    );

    if (widget.animationCallback == null) {
      _controller.repeat();
    } else {            
      _controller.addStatusListener((status) {
        if (status == AnimationStatus.completed) {          
          widget.animationCallback?.call();  
        }        
      });
      _controller.forward(from: 0);
    }

    _animation = Tween<double>(
      begin: 0, 
      end: (widget.animationFrames.length - 1).toDouble(),
    ).animate(_controller);
  }

  @override
  void didUpdateWidget(UnitWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    
    if (oldWidget.animationFrames.first != widget.animationFrames.first) {
      _controller.duration = Duration(milliseconds: widget.durationMs);

      if (widget.animationCallback == null) {
        _controller.repeat();
      } else {           
        _controller.addStatusListener((status) {
          if (status == AnimationStatus.completed) {          
            widget.animationCallback?.call();  
          }        
        });
        _controller.reset();
        _controller.forward(from: 0);
      }

       _animation = Tween<double>(
        begin: 0, 
        end: (widget.animationFrames.length).toDouble(),
      ).animate(_controller);
    }
  }

  @override
  Widget build(BuildContext context) {
    return widget.alreadyMoved 
    ? Stack(
        children: [
        _buildUnitAnimation(), 
        const Icon(Icons.check)]
      )
    : _buildUnitAnimation();
  }

  Widget _buildUnitAnimation() {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {        
        return Transform(
          alignment: Alignment.center,
          transform: widget.flip 
            ? Matrix4.rotationY(math.pi) 
            : Matrix4.rotationY(0),
          child: Image.asset(
            widget.animationFrames[_animation.value.toInt()],
            fit: BoxFit.scaleDown,
            width: MapConsts.tileSide,
            height: MapConsts.tileSide,
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