import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:turn_based_game/game_screens/mission/game_pole_widgets/game_pole_widget.dart';
import 'package:turn_based_game/game_screens/mission/game_pole_widgets/ui_tiles_widget.dart';
import 'package:turn_based_game/game_screens/mission/game_pole_widgets/units_widget.dart';
import 'package:turn_based_game/game_screens/mission/state/game_state.dart';

class MissionScreen extends StatefulWidget {
  @override
  _MissionScreenState createState() => _MissionScreenState();
}

class _MissionScreenState extends State<MissionScreen> {
  late GameState _state;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _state = Provider.of<GameState>(context);
    _state.winCallback = _showSuccessAlert;
  }

  @override
  Widget build(BuildContext context) {        
    return Scaffold( 
      appBar: AppBar(
        actions: <Widget>[
          FlatButton(
            textColor: Colors.white,
            onPressed: () {
              _state.endTurn();
            },
            child: const Text("End turn"),
            shape: const CircleBorder(
              side: BorderSide(color: Colors.transparent)
            ),
          ),
        ]
      ),     
      body: SafeArea(
        child: _buildMainPart()          
      ),      
    );
  }

  Future<void> _showSuccessAlert() {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          title: Text('Mission complete'),
          content: Scrollbar(
            child: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text(
                    'Counter-Terrorists Win!'                    
                  )                  
                ],
              ),
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context, rootNavigator: true).popUntil((route) => route.isFirst);
              },
            ),
          ],
        );
      },
    );
  }

  Widget _buildMainPart() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          children: [
            GamePoleWidget(),
            UnitsWidget(),
            UITilesWidget()
          ]
        )
      )
    );
  }
}