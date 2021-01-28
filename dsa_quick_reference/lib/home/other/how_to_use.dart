import 'package:flutter/material.dart';

class HowToUse extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Scaffold(body:
      ListTile(
        title: Text(
          "\n\nWho This App Is For",
          style: TextStyle(fontSize: 24),
        ),
        subtitle: (Text(
            "\n\n"
            "This app is presents reference material for some chosen data structures\n"+
            "and algorithms. It is not intended for a programmer who has not yet learnt\n"+
            "the concepts presented in this app. The entities in this program are\n"+
            "organized in an orderly manner for easy reference.",
          style: TextStyle(fontSize: 18, color: Colors.black),
        )
      ),),);
  }
}