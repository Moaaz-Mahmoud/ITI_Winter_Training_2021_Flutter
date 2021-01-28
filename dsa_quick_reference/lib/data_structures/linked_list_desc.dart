import 'package:flutter/material.dart';

class LinkedListDesc extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Scaffold(body:
    ListTile(
      title: Text(
        "\n\nLinked List",
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      ),
      subtitle: (Text(
        "\n\n"
            "Before discussing the linked list, we first describe a structure called 'node'. "+
            "A node consists of a data member (can be of any type) and a pointer (in some "+
            "languages reference) to another node.\n"+
            "A linked list is a chain of nodes with the first node referred to as the head "+
            "of the list. The head of the list is used as a referential node in most (if "+
            "not all) of the operations of the linked list.\n"+
            "Basic linked list operations:-\n"+
            "• Inserting an item in a specified\n  position, say k.\t\tO(k)\n"+
            "• Removing an item from a specific\n  position, say k.\t\tO(k)\n"+
            "• Searching for an element.\t\tO(n),\n"+
            "  where n is the number of elements in\n  the list.\n"
        ,
        style: TextStyle(fontSize: 18, color: Colors.black),
      )
      ),),);
  }
}