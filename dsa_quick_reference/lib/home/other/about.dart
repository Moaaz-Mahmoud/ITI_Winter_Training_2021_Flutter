import 'package:flutter/material.dart';

class About extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Scaffold(body:
    ListTile(
      title: Text(
        "\n\nAbout",
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      ),
      subtitle: (Text(
        "\n\n"
            "This is the first project for the ITI Winter Training 2021 - Mobile App Development "+
            "Using Flutter. The application is mainly a reference for data structures and algorithms.\n"+
            "Of course, the material included in the app is not thorough, since a more ambitious "+
            "content would require much more time, possibly a month. So, only a few data structures "+
            "along with a few algorithms are chosen and are presented briefly.\n\n"+
            "Author: Moaaz Mahmoud, Aswan university engineering college.",
        style: TextStyle(fontSize: 18, color: Colors.black),
      )
      ),),);
  }
}