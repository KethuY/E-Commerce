import 'dart:async';
import 'dart:convert';

import 'package:flutter_sample_app/login/token.dart';
import 'package:http/http.dart' as http;
class NetworkUtil{
  static NetworkUtil _instance = new NetworkUtil.internal();
  NetworkUtil.internal();
  factory NetworkUtil() => _instance;
  final JsonDecoder _decoder = new JsonDecoder();

  Future<dynamic> get(String url) async {
    return await http.get(url).then((http.Response response) {
      final String res = response.body;
      final int statusCode = response.statusCode;

      if (statusCode < 200 || statusCode > 400 || json == null) {
        throw new Exception("Error while fetching data");
      }
      return _decoder.convert(res);
    });

    //okay
    //one more question do You know a tool Postman
    // I know but I dont prefer I'll prefer ARC do u want to show res of api?
  }

  Future<dynamic> post(String url, {Map headers, body, encoding})  {
    return  http.post(url, body: body, headers: headers, encoding: encoding).then((http.Response response) {
      final String res = response.body ;
      final int statusCode = response.statusCode;
      print("res"+response.body+""+statusCode.toString());

      if (statusCode < 200 || statusCode > 400 || json == null) {
        throw new Exception("Error while fetching data");
      }

      return _decoder.convert(res);
    });
  }
}