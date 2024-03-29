import 'package:flutter/material.dart';
import 'package:turn_based_game/model/system/screen_dimensions.dart';

class InitialLoadingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var dimen = ScreenDimensions(context);    
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: dimen.width / 4,
                height: dimen.width / 4,
                child: const CircularProgressIndicator()
              )
            ]
          )
        ]
      )
    );
  }
}