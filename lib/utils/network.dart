import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
class Network{
  static Network _instance = new Network.internal();
  Network.internal();
  factory Network() => _instance;
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
  }

  Future<dynamic> post(String url, {Map headers, body, encoding})  {
    return  http.post(url, body: body, headers: headers, encoding: encoding).then((http.Response response) {
      final String res = response.body;
      final int statusCode = response.statusCode;

      print("res"+response.body+""+statusCode.toString());

      if (statusCode < 200 || statusCode > 400 || json == null) {
        throw new Exception("Error while fetching data");
      }
      return _decoder.convert(res);
    });
  }
}