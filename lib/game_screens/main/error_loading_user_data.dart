import 'package:flutter/material.dart';

class ErrorLoadingUserDataScreen extends StatelessWidget {
  const ErrorLoadingUserDataScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text("Error Loading User Data\nTry reloading"),
              ElevatedButton(
                onPressed: () {  }, 
                child: const Text("Reload")
              )
            ]
          )
        ]
      )
    );
  }
}