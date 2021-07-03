class Auth {
  /*
  This the Auth class for the User authorization token
  The class is used as placeholder to decode the token response body after user has has logged in
  */
  String _authToken;

  Auth(this._authToken);
  

  String get authToken => _authToken;
  set authToken(String authToken) => _authToken = authToken;

  Auth.fromJson(Map<String, dynamic> json) {
    _authToken = json['auth_token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['auth_token'] = this._authToken;
    return data;
  }
}
