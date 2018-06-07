import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return new Text("Welcome to splash screen");
  }

  @override
  void initState() {
    super.initState();

    new Timer(new Duration(milliseconds: 2), goToLoginPage);
  }

  void goToLoginPage() {
   // Navigator.of(context).pop();
    Navigator.of(context).pushReplacementNamed('/login');
  }
}
