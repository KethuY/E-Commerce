import 'dart:async';
import 'dart:convert';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sample_app/login/login_presenter.dart';
import 'package:flutter_sample_app/login/token.dart';
import 'package:flutter_sample_app/utils/network.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> implements LoginScreenContract{
  BuildContext _ctx;

  bool _isLoading = false;
  final formKey = new GlobalKey<FormState>();
  final scaffoldKey = new GlobalKey<ScaffoldState>();
  String _userName, _password;
  LoginScreenPresenter _presenter;

  LoginScreenState() {
    setState(() {
      _presenter = new LoginScreenPresenter(this);
    });

  }


  @override
  Widget build(BuildContext context) {
    _ctx = context;
    var loginBtn = new RaisedButton(
      onPressed: _login,
      child: new Text("LOGIN"),
      color: Colors.primaries[0],
    );
    var loginForm = new Column(
      children: <Widget>[
        new Text(
          "Login App",
          textScaleFactor: 2.0,
        ),
        new Form(
          key: formKey,
          child: new Column(
            children: <Widget>[
              new Padding(
                padding: const EdgeInsets.all(8.0),
                child: new TextFormField(
                  onSaved: (val) => _userName = val,
                 /* validator: (val) {
                    return val.length < 10
                        ? "Username must have atleast 10 chars"
                        : null;
                  },*/
                  decoration: new InputDecoration(labelText: "Username"),
                ),
              ),
              new Padding(
                padding: const EdgeInsets.all(8.0),
                child: new TextFormField(
                  onSaved: (val) => _password = val,
                  decoration: new InputDecoration(labelText: "Password"),
                ),
              ),
            ],
          ),
        ),
        _isLoading ? new CircularProgressIndicator() : loginBtn
      ],
      crossAxisAlignment: CrossAxisAlignment.center,
    );

    return new Scaffold(
      appBar: null,
      key: scaffoldKey,
      body: new Container(
      /*  decoration: new BoxDecoration(
          image: new DecorationImage(
              image: new AssetImage("assets/bg.jpg"),
              fit: BoxFit.cover),
        ),*/
        child: new Center(
          child: new ClipRect(
            child: new BackdropFilter(
              filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: new Container(
                child: loginForm,
                height: 300.0,
                width: 300.0,
                decoration: new BoxDecoration(
                    color: Colors.grey.shade200.withOpacity(0.5)),
              ),
            ),
          ),
        ),
      ),
    );
  }
  @override
  void onLoginError(String errorTxt) {
    _showSnackBar(errorTxt);
     setState(() => _isLoading = false);
  }

  @override
  void onLoginSuccess(Token token) {
    _showSnackBar(token.toString());
    setState(() => _isLoading = false);
    Navigator.of(_ctx).pushReplacementNamed("/home");

  }

  /* void _login(){
    Navigator.of(_ctx).pushReplacementNamed("/home");
  }*/

  Future<dynamic> _login(){

    const BASE_URL = 'http://api.pickcargo.in/api/master/customer/login';
    NetworkUtil _netUtil = new NetworkUtil();
    var body = {'MobileNo': "9291570524", 'Password': "Pickc@123"};
    final encoding = "application/json";
    return _netUtil.post(BASE_URL, body: body,encoding: Encoding.getByName(encoding)).then((dynamic res) {
      print("Result "+res.toString());
    });

  }

  void _showSnackBar(String text) {
    scaffoldKey.currentState.showSnackBar(new SnackBar(content: new Text(text)));
  }

}
