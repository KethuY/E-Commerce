import 'package:flutter/material.dart';
import 'package:flutter_sample_app/home/homeScreen.dart';
import 'package:flutter_sample_app/login/login.dart';
import 'package:flutter_sample_app/routes.dart';
import 'package:flutter_sample_app/signup/signup.dart';
import 'package:flutter_sample_app/splash/splash.dart';

void main() => runApp(new MyApp());


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new SplashScreen(),
      routes: routes,
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
}