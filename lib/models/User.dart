class User{

  String _userName;
  String _firstName;
  String _lastName;
  String _email;
  String _phoneNumber;
  String _password;
  String _rePassword;

  User(this._userName, this._firstName, this._lastName, this._email,
      this._phoneNumber, this._password, this._rePassword);

  String get rePassword => _rePassword;

  set rePassword(String value) {
    _rePassword = value;
  }

  String get password => _password;

  set password(String value) {
    _password = value;
  }

  String get phoneNumber => _phoneNumber;

  set phoneNumber(String value) {
    _phoneNumber = value;
  }

  String get email => _email;

  set email(String value) {
    _email = value;
  }

  String get lastName => _lastName;

  set lastName(String value) {
    _lastName = value;
  }

  String get firstName => _firstName;

  set firstName(String value) {
    _firstName = value;
  }

  String get userName => _userName;

  set userName(String value) {
    _userName = value;
  }
}