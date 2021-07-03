class User {
  String _username;
  String _fullName;
  String _email;
  String _phone;
  String _password;
  String _rePassword;

  User(this._username, this._fullName, this._email, this._phone, this._password,
      this._rePassword);

  String get username => _username;

  set username(String username) => _username = username;

  String get fullName => _fullName;

  set fullName(String fullName) => _fullName = fullName;

  String get email => _email;

  set email(String email) => _email = email;

  String get phone => _phone;

  set phone(String phone) => _phone = phone;

  String get password => _password;

  set password(String password) => _password = password;

  String get rePassword => _rePassword;

  set rePassword(String rePassword) => _rePassword = rePassword;

  User.fromJson(Map<String, dynamic> json) {
    _username = json['username'];
    _fullName = json['full_name'];
    _email = json['email'];
    _phone = json['phone'];
    _password = json['password'];
    _rePassword = json['re_password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['username'] = this._username;
    data['full_name'] = this._fullName;
    data['email'] = this._email;
    data['phone'] = this._phone;
    data['password'] = this._password;
    data['re_password'] = this._rePassword;
    return data;
  }
}
