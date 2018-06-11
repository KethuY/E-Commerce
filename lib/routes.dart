import 'package:flutter/material.dart';
import 'package:flutter_sample_app/home/home.dart';
import 'package:flutter_sample_app/login/login.dart';
import 'package:flutter_sample_app/signup/signup.dart';
import 'package:flutter_sample_app/splash/splash.dart';

final routes = {
  '/home': (BuildContext context) => new HomeScreen(),
  '/login' : (BuildContext context) => new LoginScreen(),
  '/signup': (BuildContext context) => new SignUpScreen(),
 // '/' :          (BuildContext context) => new SplashScreen(),
};