import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // final globalKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(body: myWidget());
  }

  Widget myWidget() {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: new Container(
        child: new Center(child: new Text("PR TECHNO SOLUTIONS PVT LTD",style: new TextStyle(color: Colors.black),)),
        // child: new Image.asset('splash.png'),
      ),
    );

    /* child: new MaterialButton(
        onPressed: () {
         // _loginUser();

         // _login();
        },
        // Now happy yes but I want to whats wrong with my code. where it is

        child: new Text("Press Here to Login"),
      ),*/
  }

/*


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
*/

  @override
  void initState() {
    super.initState();

    new Timer(new Duration(milliseconds: 5), goToLoginPage);
  }

  void goToLoginPage() {
    // Navigator.of(context).pop();
    Navigator.of(context).pushReplacementNamed('/login');
  }
}
