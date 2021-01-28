import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
            length: 3,
            child: Scaffold(
                drawer: Drawer(child: ListView(children: [
                  Card(

                  ),
                  Card(

                  ),
                  Card(

                  )
                ]))
            )
        )
    );
  }
}
