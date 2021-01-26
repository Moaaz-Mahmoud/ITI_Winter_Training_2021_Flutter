import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Time Table App',
    home: FirstApp(),
  ));
}

final int SIZE = 12;
/*var lis=[
  "Linked List", "Stack", "Queue", "BST", "Heap", "Hash Table",
  "Balanced BST", "Graph", "Segment Tree" ,"Fenwick Tree", "Trie", "Treap"
];*/

var lis = ["0", "1", '2', '3', '4', '5', '6',
           '7', '8', '9', '10', '11', '12'];
var l_icon=[
  Icons.list, Icons.arrow_circle_up, Icons.queue,
  Icons.share, Icons.wb_cloudy, Icons.view_list,
  Icons.share_outlined, Icons.ac_unit, Icons.share_rounded,
  Icons.share_rounded, Icons.text_format,Icons.share_sharp,
  Icons.access_alarm
];

class FirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text('Time Table App'),
        centerTitle: true,
        shadowColor: Colors.lightGreen,
        backgroundColor: Colors.lime,
        actions: [
          IconButton(icon: Icon(Icons.list_alt_rounded), onPressed: () {
            print('Meow!');
          },)
        ],
      ),
      body: ListView(
        children: [
          for(int i = 0; i < lis.length; i++)
            ListTile(
              trailing: Icon(l_icon[i]),
              leading: CircleAvatar(
                child: Icon(l_icon[i], color: Colors.amber,),
                backgroundColor: Colors.black,
              ),
              subtitle: Text("Time table for number $i"),
              title: Text(lis[i]),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context)=> Sec(i),
                  ),
                );
              },
            ),

        ],

      ),
    );
  }
}
class Sec extends StatelessWidget {
  var L = [];
  Sec(int n) {
    for(int j = 0; j <= 12; j++)
      L.add("$n\t\t*\t\t$j\t\t=\t\t${n * j}\n");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body:ListView(
        children: [
          for(int i = 0; i <= 12; i++)
          ListTile(
            title: Text(L[i], style: TextStyle(fontSize: 20),),
            //subtitle: Text(f.toString()),
          )
        ],
      ),
    );
  }
}
