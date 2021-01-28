import 'package:dsa_quick_reference/home/algorithms/dijkstra_desc.dart';
import 'package:dsa_quick_reference/home/algorithms/kadane_desc.dart';
import 'package:flutter/material.dart';
import 'other/how_to_use.dart';
import 'data_structures/linked_list_desc.dart';
import 'data_structures/stack_desc.dart';
import 'data_structures/binary_search_tree_desc.dart';
import 'other/about.dart';
import 'algorithms/dfs_desc.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "DSA Quick Reference",
        theme: ThemeData(
          //=================================================//
        ),
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
                  title: Text("DSA Quick Reference"),
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
                        colorFilter: ColorFilter.mode(
                            Colors.white.withOpacity(0.4),
                            BlendMode.softLight
                        )
                    )),
                  child: TabBarView(
                    children: [
                      ListView(
                        children: [
                          Center(
                            child: Text('\nWelcome to DSA Quick Reference!',
                                     style: TextStyle(fontSize: 20,
                                                      color: Colors.black,
                                                      fontWeight: FontWeight.bold)),
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
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (BuildContext context)=> Kadane(),
                                ),
                              );
                            }
                        ),
                        ListTile(
                          title: Text(
                              "Depth-First Search",
                              style: TextStyle(fontWeight: FontWeight.bold)
                          ),
                          subtitle: Text("Graph traversal algorithm"),
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (BuildContext context)=> DFS(),
                                ),
                              );
                            }
                        ),
                        ListTile(
                          title: Text(
                              "Dijkstra's",
                              style: TextStyle(fontWeight: FontWeight.bold)
                          ),
                          subtitle: Text("Shortest-path finding algorithm"),
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (BuildContext context)=> Dijkstra(),
                                ),
                              );
                            }
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
