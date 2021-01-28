import 'package:flutter/material.dart';

class StackDesc extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Scaffold(body:
    ListTile(
      title: Text(
        "\n\nStack",
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      ),
      subtitle: (Text(
        "\n\n"
            "The stack is a last-in-first-out (LIFO) data structure. That is, the stack "+
            "allows for adding items to one end and removing items from the same end. "+
            "The stack can be easily and efficiently implemented using a linked list.\n"+
            "All of the operations of the stack are O(1).\n"+
            "Basic stack operations:-\n"+
            "• Adding an item to the top (top).\n"+
            "• Removing an item from the top (pop).\n"+
            "• Retrieving the item on the top (peek).\n"+
            "• Querying for the size of the stack.\n"+
            "• Checking whether the stack is empty.\n"
            ,
        style: TextStyle(fontSize: 18, color: Colors.black),
      )
      ),),);
  }
}