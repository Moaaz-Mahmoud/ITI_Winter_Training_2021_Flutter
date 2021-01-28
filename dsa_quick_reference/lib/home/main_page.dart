import 'package:flutter/material.dart';
import 'other/how_to_use.dart';
import 'data_structures/linked_list_desc.dart';
import 'data_structures/stack_desc.dart';
import 'data_structures/binary_search_tree_desc.dart';
import 'other/about.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
            length: 3,
            child: Scaffold(
                drawer: Drawer(
                  child: ListView(children: [
                    /*UserAccountsDrawerHeader(
                      accountName: Text("Meow Meow"),
                      accountEmail: Text("meow@gmail.com"),
                      currentAccountPicture: Image.asset("assets/images/img.jpg"),
                    ),*/
                    Card(child: ListTile(
                      title: Text('Home'),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context)=> MainPage(),
                          ),
                        );
                      },
                    ),),
                    Card(child: ListTile(
                      title: Text('How to use this app'),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context)=> HowToUse(),
                          ),
                        );
                      },
                    ),),
                  ],),
                ),
                appBar: AppBar(
                    actions: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.wb_incandescent_outlined,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context)=> About(),
                            ),
                          );
                        },
                      )
                    ],
                    backgroundColor: Colors.blueGrey,
                    bottom: TabBar(
                        tabs:[
                          Tab(text: "Home", icon: Icon(Icons.home),),
                          Tab(text: "Data Structures", icon: Icon(Icons.view_list_sharp)),
                          Tab(text: "Algorithms",icon: Icon(Icons.hourglass_empty))
                        ]
                    )
                ),
                body: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:
                        AssetImage("assets/images/background.png"),
                        fit: BoxFit.cover,
                    )),
                  child: TabBarView(
                    children: [
                      ListView(
                        children: [
                          /*
                      new Image.asset("D:/FlutterApps/ITI_Winter_Training_2021_Flutter"+
                      "/dsa_quick_reference/assets/images/home_bg.jpg")*/
                          Center(
                            child: Text('\nWelcome to DSA Quick Reference!',
                                        style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold), ),
                          ),
                        ],
                      ),
                      ListView(children: [
                        ListTile(
                          title: Text(
                            "Linked List",
                            style: TextStyle(fontWeight: FontWeight.bold)
                          ),
                          subtitle: Text("Linear, link-based data structure",),
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (BuildContext context)=> LinkedListDesc(),
                              ),
                            );
                          }
                        ),
                        ListTile(
                          title: Text(
                              "Stack",
                              style: TextStyle(fontWeight: FontWeight.bold)
                          ),
                          subtitle: Text("Linear, link-based data structure"),
                          onTap: (){
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (BuildContext context)=> StackDesc(),
                              ),
                            );
                          }
                        ),
                        ListTile(
                          title: Text(
                              "Binary Search Tree",
                              style: TextStyle(fontWeight: FontWeight.bold)
                          ),
                          subtitle: Text("Non-linear data structure"),
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (BuildContext context)=> BinarySearchTreeDesc(),
                              ),
                            );
                          }
                        ),
                      ],),
                      ListView(children: [
                        ListTile(
                          title: Text(
                              "Kadane's",
                              style: TextStyle(fontWeight: FontWeight.bold)
                          ),
                          subtitle: Text("Iterative dp algorithm"),
                        ),
                        ListTile(
                          title: Text(
                              "Depth-First Search",
                              style: TextStyle(fontWeight: FontWeight.bold)
                          ),
                          subtitle: Text("Graph traversal algorithm"),
                        ),
                        ListTile(
                          title: Text(
                              "Dijkstra's",
                              style: TextStyle(fontWeight: FontWeight.bold)
                          ),
                          subtitle: Text("Shortest-path finding algorithm"),
                        ),
                      ],)
                    ],
                  )
            )
            )
        )
    );
  }
}
