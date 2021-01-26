import 'package:flutter/material.dart';

void main(){
  runApp(App1());
}

class App1 extends StatelessWidget{
  var Tiles = [
    ListTile(
      title: Text('Cat #1', style: TextStyle(),),
      onTap: (){print('Meow !!!');},
    ),
    ListTile(
      title: Text('Cat #2', style: TextStyle(),),
      onTap: (){print('Meow %%%');},
    ),
    ListTile(
      title: Text('Cat #3', style: TextStyle(),),
      onTap: (){print('Meow ♦♦♦');},
    )
  ];

  @override
  Widget build(BuildContext context){
    return MaterialApp(
        title: "MyApp",
        debugShowCheckedModeBanner: true,
        home: Scaffold(
          drawer: Drawer(child: ListView(children: Tiles,)),
          appBar: AppBar(
            title: Text(
              'CatApp',
              style: TextStyle(color: Colors.white),
            ),
            shadowColor: Colors.grey,
            backgroundColor: Colors.blueGrey[700],
            actions: [IconButton(icon: Icon(Icons.favorite),)],
          ),
          body: ListView(children:Tiles)
        )
    );
  }
}
