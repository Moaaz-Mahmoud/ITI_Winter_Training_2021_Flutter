import 'package:flutter/material.dart';
import 'home/main_page.dart';

void main() {
  runApp(MaterialApp(
    title: 'Moaaz App',
    home: Main(),
  ));
}

class Main extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainPage()
    );
  }
}

