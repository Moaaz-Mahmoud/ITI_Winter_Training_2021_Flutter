import 'package:flutter/material.dart';

class Kadane extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Scaffold(body:
    ListTile(
      trailing: Icon(Icons.construction),
      title: Text(
        "\n\nKadane's Algorithm",
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      ),
      subtitle: (Text(
        "\n\n"+
            "Kadane's algorithm is used to find the maximum subarray sum "+
            "in a given array of integers.\n"+
            "Algorithm (we will use '=' for assignment):-"+
            "Maintain two values, cur and max_so_far.\n"+
            "cur = 0, max_so_far = 0\n"+
            "for every element a in the array:\n"+
            "\t\tcur += a\n"+
            "\t\tif (cur < 0)\n"+
            "\t\t\t\tcur = 0\n"+
            "\t\tmax_so_far = max(max_so_far,\n\t\tcur)\n"+
            "return max_so_far"
        ,
        style: TextStyle(fontSize: 18, color: Colors.black),
      )
      ),),);
  }
}