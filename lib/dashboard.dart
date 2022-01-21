import 'package:flutter/material.dart';
import 'package:login_ui_design/tweets.dart';
import 'package:login_ui_design/compose.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff15202b),
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: TwitterBody(),
      drawer: Drawer(
        child: Container(
            color: Theme.of(context).primaryColor,
            child: Column(
            )),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context,
                new MaterialPageRoute(builder: (context)=> new Comp())
            );
          },
          child: Icon(Icons.add)),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff1DA1F2),
        items: [
          BottomNavigationBarItem(icon: new Icon(Icons.home, color: Colors.black), label: 'home'),
          BottomNavigationBarItem(icon: new Icon(Icons.search, color: Colors.black), label: 'search')
        ],
      ),
      // body: _children[_currentIndex],
    );
  }
}