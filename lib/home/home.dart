import 'dart:async';
import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sample_app/utils/globals.dart' as globals;

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  Drawer _drawer= new Drawer(
    child: new ListView(
      padding: const EdgeInsets.all(0.0),
      children: <Widget>[

        new DrawerHeader(
          child: new Row(
            children: <Widget>[],
          ),
          //new Text('Drawer Header',style: new TextStyle(color: Colors.white),),
          decoration: new BoxDecoration(
            color: Colors.blue,
          ),
        ),
        new ListTile(
          title: new Text('Item 1'),
          onTap: () {},
        ),
        new ListTile(
          title: new Text('Item 2'),
          onTap: () {},
        ),
        new ListTile(
          title: new Text('Item 3'),
          onTap: () {},
        ),
        new ListTile(
          title: new Text('Item 4'),
          onTap: () {},
        ),
        new ListTile(
          title: new Text('Item 5'),
          onTap: () {},
        ),
        new ListTile(
          title: new Text('Item 6'),
          onTap: () {},
        ),
        new ListTile(
          title: new Text('Item 7'),
          onTap: () {},
        ),
        new ListTile(
          title: new Text('Item 8'),
          onTap: () {},
        ),
        new ListTile(
          title: new Text('Item 9'),
          onTap: () {},
        ),
        new ListTile(
          title: new Text('My Favourites'),
          onTap: () {

          },
        ),
      ],
    ),
  );
  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: globals.scaffoldKey,
        appBar: new AppBar(
          title: new Text("Sample App"),
          leading: new IconButton(icon: new Icon(Icons.menu), onPressed: () {
            globals.scaffoldKey.currentState.openDrawer();
          }),


          actions: <Widget>[
            new IconButton(
              icon: new Icon(Icons.notifications),
              onPressed: () {},
            ),
            new IconButton(
              icon: new Icon(Icons.shopping_cart),
              onPressed: () {},
            ),
          ],
        ),


        drawer:_drawer,
        body: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new Container(
              height: 250.0,
              child: new Stack(
                children: <Widget>[
                  new Center(
                      child: new Container(
                    child: new Text(
                      "You are supposed to see a map here.\n\nAPI Key is not valid.\n\n"
                          "To view maps in the example application set the "
                          "API_KEY variable in example/lib/main.dart. "
                          "\n\nIf you have set an API Key but you still see this text "
                          "make sure you have enabled all of the correct APIs "
                          "in the Google API Console. See README for more detail.",
                      textAlign: TextAlign.center,
                    ),
                    padding: const EdgeInsets.all(20.0),
                  )),

                ],
              ),
            ),

          ],
        ));
  }

}

