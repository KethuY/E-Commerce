class Token{
  String token;
  String status;

  Token(this.token, this.status);


  Token.map(dynamic obj) {
    this.token = obj["Token"];
    this.status = obj["Status"];
  }

  String get getToken => token;
  String get getStatus => status;

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map["Token"] = token;
    map["Status"] = status;

    return map;
  }
}