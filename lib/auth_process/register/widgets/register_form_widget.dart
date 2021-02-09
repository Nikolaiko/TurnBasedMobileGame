import 'package:flutter/material.dart';

class RegisterFormWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: "Name",
              hintText: "Enter user name",
              filled: true
            ),
            onChanged: (String value) => { }
          ),
          TextField(
            decoration: InputDecoration(
              labelText: "Password",
              hintText: "Enter user password",
              filled: true
            ),
            obscureText: true,
            onChanged: (String value) => { }
          ),
          ButtonBar(
            children: [
              RaisedButton(                
                onPressed: null, 
                child: Text("Register")
              ),
              FlatButton(                
                onPressed: () { Navigator.of(context).pop(); }, 
                child: Text("Back")
              )
            ]
          )          
        ]
      )
    );
  }  
}