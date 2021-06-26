

class Validator{

  /// password validation function
  /// indicating
  ///   -> Minimum 1 Upper case,
  ///   -> Minimum 1 lowercase
  ///   -> Minimum 1 lowercase
  ///   -> Minimum 1 special character
  ///  allowed characters are [!@#\$&*~]
  static bool passwordValidator(String password){
    String  pattern = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    RegExp regExp = new RegExp(pattern);
    return regExp.hasMatch(password);
  }

  ///
  /// standard email validation function
  static bool emailValidator(String email){
    String pattern = r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
    RegExp regExp = new RegExp(pattern);
    return regExp.hasMatch(email);
  }
  
}