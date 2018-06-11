import 'dart:async';
import 'dart:convert';

import 'package:flutter_sample_app/EventObject.dart';
import 'package:http/http.dart' as http;

Future<EventObject> loginUserHere() async {
  try {
    var body = {'MobileNo': "9291570524", 'Password': "Pick@123"};
    final encoding = "application/json";
    final response = await http.post(
        "http://api.pickcargo.in/api/master/customer/login",
        body: body,
          encoding: Encoding.getByName(encoding));
    if (response != null) {
      if (response.statusCode == 200) {
        final responseJson = json.decode(response.body);
        LoginResponse loginResponse =
            await LoginResponse.fromLoginResponse(responseJson);
        print(loginResponse.Status);
        print(loginResponse.Token);
        return new EventObject(id: 500, object: loginResponse);
      } else {
        return new EventObject(id: 501);
      }
    } else {
      return new EventObject();
    }
  } catch (e) {
    print(e.toString());
    return new EventObject();
  }
}

class LoginResponse {
  String Token;
  bool Status;

  LoginResponse({this.Token, this.Status});

  static Future<LoginResponse> fromLoginResponse(
      Map<String, dynamic> json) async {
    return new LoginResponse(Token: json['Token'], Status: json['Status']);
  }
}
