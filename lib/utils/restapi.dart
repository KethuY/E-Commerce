import 'dart:async';

import 'package:flutter_sample_app/login/token.dart';
import 'package:flutter_sample_app/utils/network.dart';

class RestApis {
  final NetworkUtil _netUtil = new NetworkUtil();
  static String BASE_URL = "http://api.pickcargo.in/api/";
  static final LOGIN_URL = BASE_URL + "master/customer/login";


  Future<Token> login(String username, String password) {
    return _netUtil.post(
      LOGIN_URL,
      body: {
      "MobileNo": username,
      "Password": password
    },
      headers: {
    "Content-Type":"application/json"
    },).then((dynamic res) {
      print(res.toString());
      if (res["error"]) throw new Exception(res["error_msg"]);
      return new Token.map(res["token"]);
    });
  }
}
