import 'dart:async';
import 'dart:convert';

import 'package:flutter_sample_app/EventObject.dart';
import 'package:flutter_sample_app/utils/harshishelping.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sample_app/utils/network.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final globalKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        key: globalKey, backgroundColor: Colors.white, body: myWidget());
  }

  Widget myWidget() {
    return new Center(
      child: new MaterialButton(
        onPressed: () {
         // _loginUser();

          _login();
        },
        // Now happy yes but I want to whats wrong with my code. where it is

        child: new Text("Press Here to Login"),
      ),
    );
  }


  Future<dynamic> _login(){

    const BASE_URL = 'http://api.pickcargo.in/api/master/customer/login';
    NetworkUtil _netUtil = new NetworkUtil();
    var body = {'MobileNo': "9291570524", 'Password': "Pickc@123"};
    final encoding = "application/json";
    return _netUtil.post(BASE_URL, body: body,encoding: Encoding.getByName(encoding)).then((dynamic res) {
      print("Result "+res.toString());
    });

  }

  //------------------------------------------------------------------------------
  void _loginUser() async {
    EventObject eventObject = await loginUserHere();
    switch (eventObject.id) {
      case 500:
        {
          setState(() {
            //wait let me do it
            //ok
            globalKey.currentState.showSnackBar(new SnackBar(
              content: new Text("LOGIN_SUCCESSFUL"),
            ));
          });
        }
        break;
      case 501:
        {
          setState(() {
            globalKey.currentState.showSnackBar(new SnackBar(
              content: new Text("LOGIN_UN_SUCCESSFUL"),
            ));
          });
        }
        break;
      case 0:
        {
          setState(() {
            globalKey.currentState.showSnackBar(new SnackBar(
              content: new Text("NO_INTERNET_CONNECTION"),
            ));
          });
        }
        break;
    }
  }

//------------------------------------------------------------------------------

  @override
  void initState() {
    super.initState();

//    new Timer(new Duration(milliseconds: 2), goToLoginPage);
  }

  void goToLoginPage() {
    // Navigator.of(context).pop();
    Navigator.of(context).pushReplacementNamed('/login');
  }
}
