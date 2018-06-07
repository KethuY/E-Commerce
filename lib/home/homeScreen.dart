import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Home"),
        leading: new IconButton(
            icon: new Icon(Icons.menu),
            onPressed: (){
        
      }),
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new DrawerHeader(
              child: new Row(
                children: <Widget>[

                ],
              ),
              //new Text('Drawer Header',style: new TextStyle(color: Colors.white),),
              decoration: new BoxDecoration(
                color: Colors.blue,
                
                
              ),
              
            ),
            new ListTile(
              title: new Text('Item 1'),
              onTap: () {
              },
            ),
            new ListTile(
              title: new Text('Item 2'),
              onTap: () {
              },
            ),
            new ListTile(
              title: new Text('Item 3'),
              onTap: () {
              },
            ),
            new ListTile(
              title: new Text('Item 4'),
              onTap: () {
              },
            ),
            new ListTile(
              title: new Text('Item 5'),
              onTap: () {
              },
            ),
            new ListTile(
              title: new Text('Item 6'),
              onTap: () {
              },
            ),
            new ListTile(
              title: new Text('Item 7'),
              onTap: () {
              },
            ),
            new ListTile(
              title: new Text('Item 8'),
              onTap: () {
              },
            ),

            new ListTile(
              title: new Text('Item 9'),
              onTap: () {
              },

            ),
            new ListTile(
              title: new Text('Item 8'),
              onTap: () {

              },
            ),
          ],
        ),
      ),
      body: new Center(
        child: new Text("Welcome home!"),
      ),
    );
  }
}
