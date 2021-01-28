import 'package:flutter/material.dart';

class BinarySearchTreeDesc extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Scaffold(body:
    ListTile(
      title: Text(
        "\n\nBinary Search Tree (BST)",
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      ),
      subtitle: (Text(
        "\n\n"
            "Like a linked list, a tree is a link-based data structure that is composed. "+
            "of a group of nodes linked together forming the whole structure. The node of "+
            "the tree consists of three "+
            "data members; a data item, a left pointer and a right pointer. The left pointer "+
            "of a certain node always points to a node containing a data item of less "+
            "value than that of that node. Similarly, the right pointer points to a node "+
            "containing a data item of more value than that of that node. That way, "+
            "the BST controls the order of its elements in a way that "+
            "makes it possible to search for an item in O(log n) time.\n"+
            "Basic binary search tree operations with average time complexities:-\n"+
            "• Inserting an element.\t\tO(log n)\n"
            "• Deleting an element.\t\tO(log n)\n"
            "• Searching for an element\t\tO(log n).\n"+
            "• Traversing the tree.\t\tO(n)"
        ,
        style: TextStyle(fontSize: 18, color: Colors.black),
      )
      ),),);
  }
}