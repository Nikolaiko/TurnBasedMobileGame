import 'package:flutter/material.dart';

class ErrorOpenUserProfileScreen extends StatelessWidget {
  const ErrorOpenUserProfileScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {    
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text("Error Opening User Profile\nTry relogin"),
              ElevatedButton(
                onPressed: () {  }, 
                child: const Text("Logout")
              )
            ]
          )
        ]
      )
    );
  }  
}