import 'package:flutter/material.dart';

class DFS extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Scaffold(body:
    ListTile(
      trailing: Icon(Icons.construction),
      title: Text(
        "\n\nDepth-First Search (DFS)",
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      ),
      subtitle: (Text(
        "\n\n"
            "This page is under construction",
        style: TextStyle(fontSize: 18, color: Colors.black),
      )
      ),),);
  }
}