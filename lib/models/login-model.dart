
class LoginUser {
  
  String email;
  String password;
  bool rememberMe;

  String get getEmail{
    return email;
  }

  String get getPassword{
    return password;
  }

  bool get getRememberMe {
    return rememberMe;
  }

  set setEmail(String email){
    this.email = email;
  }

  set setPassword(String password){
    this.password = password;
  }

  set setRememberMe(bool rememberMe){
    this.rememberMe = rememberMe;
  }
}